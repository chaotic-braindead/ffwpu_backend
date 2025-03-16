from rest_framework import generics
from .models import *
from .serializers import *
from rest_framework.response import Response
from rest_framework.filters import OrderingFilter
from rest_framework import status
from django.shortcuts import get_object_or_404
from rest_framework import views


class BlessingListCreate(generics.ListCreateAPIView):
    queryset = Blessing.objects.all()
    permission_classes = []
    serializer_class = BlessingSerializer
    model = serializer_class.Meta.model
    filter_backends = [OrderingFilter]
    ordering_fields = ["blessing_date"]


class BlessingRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Blessing.objects.all()
    permission_classes = []
    serializer_class = BlessingSerializer
    model = serializer_class.Meta.model


class AddMemberToBlessingView(generics.UpdateAPIView):
    queryset = Blessing.objects.all()
    serializer_class = BlessingSerializer
    permission_classes = []

    def update(self, request, *args, **kwargs):
        blessing = self.get_object()
        member_ids = request.data.get("members", [])  # Expecting a list of IDs
        print(member_ids)
        try:
            members = Member.objects.filter(member_id__in=member_ids)
            blessing.members.add(*members)  # Use `.add()` for ManyToMany
            blessing.save()
        except Member.DoesNotExist:
            return Response({"error": "One or more members not found"}, status=400)

        return Response(BlessingSerializer(blessing).data)


class RemoveMemberFromBlessingView(generics.UpdateAPIView):
    queryset = Blessing.objects.all()
    serializer_class = BlessingSerializer
    permission_classes = []

    def update(self, request, *args, **kwargs):
        blessing = self.get_object()
        member_id = request.data.get("member_id")  # Expecting a single member ID

        try:
            member = Member.objects.get(pk=member_id)
            if member in blessing.members.all():
                blessing.members.remove(member)  # Removes the member
                blessing.save()
                return Response(
                    BlessingSerializer(blessing).data, status=status.HTTP_200_OK
                )
            else:
                return Response(
                    {"error": "Member not associated with this blessing"},
                    status=status.HTTP_400_BAD_REQUEST,
                )
        except Member.DoesNotExist:
            return Response(
                {"error": "Member not found"}, status=status.HTTP_404_NOT_FOUND
            )


class BlessingAddGuest(views.APIView):
    permission_classes = []

    def post(self, request, pk):
        blessing = get_object_or_404(Blessing, pk=pk)
        name = request.data.get("name")
        email = request.data.get("email")
        invited_by = request.data.get("invited_by")

        if not name:
            return Response(
                {"error": "name is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        if not email:
            return Response(
                {"error": "email is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        if invited_by:
            invited_by = get_object_or_404(Member, pk=invited_by)

        guest = Guest.objects.create(name=name, email=email, invited_by=invited_by)
        GuestBlessing.objects.create(guest=guest, blessing=blessing)
        return Response(
            {"message": "Guest added successfully"}, status=status.HTTP_201_CREATED
        )


class BlessingRemoveGuest(views.APIView):
    permission_classes = []

    def post(self, request, pk):
        blessing = get_object_or_404(Blessing, pk=pk)
        guest_id = request.data.get("guest_id")

        if not guest_id:
            return Response(
                {"error": "guest_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        guest = get_object_or_404(Guest, pk=guest_id)

        # Check if the member is already attending this worship
        if GuestBlessing.objects.filter(guest=guest, blessing=blessing).exists():
            GuestBlessing.objects.filter(guest=guest, blessing=blessing).delete()

        return Response(
            {"message": "Guest deleted successfully"}, status=status.HTTP_201_CREATED
        )

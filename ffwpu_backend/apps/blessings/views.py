from rest_framework import generics
from .models import *
from .serializers import *
from rest_framework.response import Response


class BlessingListCreate(generics.ListCreateAPIView):
    queryset = Blessing.objects.all()
    permission_classes = []
    serializer_class = BlessingSerializer
    model = serializer_class.Meta.model


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

    def update(self, request, *args, **kwargs):
        blessing = self.get_object()
        member_id = request.data.get("member_id")  # Expecting a single member ID

        try:
            member = Member.objects.get(id=member_id)
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

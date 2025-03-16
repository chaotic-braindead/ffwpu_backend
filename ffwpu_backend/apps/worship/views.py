from rest_framework import generics, views
from .models import Worship, Guest, GuestWorship
from .serializers import WorshipSerializer
from rest_framework.filters import OrderingFilter
from django_filters.rest_framework import DjangoFilterBackend
from members.models import MemberWorship, Member
from django.shortcuts import get_object_or_404
from rest_framework.response import Response
from rest_framework import status


class WorshipListCreate(generics.ListCreateAPIView):
    queryset = Worship.objects.all()
    serializer_class = WorshipSerializer
    model = serializer_class.Meta.model
    filter_backends = [OrderingFilter, DjangoFilterBackend]
    permission_classes = []
    ordering_fields = ["date"]
    filterset_fields = ["worship_type"]


class WorshipRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Worship.objects.all()
    serializer_class = WorshipSerializer
    permission_classes = []


class WorshipAddAttendee(views.APIView):
    permission_classes = []

    def post(self, request, pk):
        worship = get_object_or_404(Worship, pk=pk)
        member_id = request.data.get("member_id")

        if not member_id:
            return Response(
                {"error": "member_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        member = get_object_or_404(Member, pk=member_id)

        # Check if the member is already attending this worship
        if MemberWorship.objects.filter(member=member, worship=worship).exists():
            return Response(
                {"message": "Member is already attending this worship"},
            )

        # Add the member to the worship
        MemberWorship.objects.create(member=member, worship=worship)

        return Response(
            {"message": "Attendee added successfully"}, status=status.HTTP_201_CREATED
        )


class WorshipRemoveAttendee(views.APIView):
    def post(self, request, pk):
        worship = get_object_or_404(Worship, pk=pk)
        member_id = request.data.get("member_id")

        if not member_id:
            return Response(
                {"error": "member_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        member = get_object_or_404(Member, pk=member_id)

        # Check if the member is already attending this worship
        if MemberWorship.objects.filter(member=member, worship=worship).exists():
            MemberWorship.objects.filter(member=member, worship=worship).delete()
            return Response(
                {"message": "Attendee deleted successfully"},
                status=status.HTTP_201_CREATED,
            )
        return Response({"message": "No such attendee exists."})


class WorshipAddGuest(views.APIView):
    permission_classes = []

    def post(self, request, pk):
        worship = get_object_or_404(Worship, pk=pk)
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
        GuestWorship.objects.create(guest_id=guest, worship_id=worship)
        return Response(
            {"message": "Guest added successfully"}, status=status.HTTP_201_CREATED
        )


class WorshipRemoveGuest(views.APIView):
    permission_classes = []

    def post(self, request, pk):
        worship = get_object_or_404(Worship, pk=pk)
        guest_id = request.data.get("guest_id")

        if not guest_id:
            return Response(
                {"error": "guest_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        guest = get_object_or_404(Guest, pk=guest_id)

        # Check if the member is already attending this worship
        if GuestWorship.objects.filter(guest_id=guest, worship_id=worship).exists():
            GuestWorship.objects.filter(guest_id=guest, worship_id=worship).delete()

        return Response(
            {"message": "Guest deleted successfully"}, status=status.HTTP_201_CREATED
        )

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


class WorshipAddAttendee(views.APIView):
    def post(self, request, worship_id):
        worship = get_object_or_404(Worship, pk=worship_id)
        member_id = request.data.get("member_id")

        if not member_id:
            return Response(
                {"error": "member_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        member = get_object_or_404(Member, pk=member_id)

        # Check if the member is already attending this worship
        if MemberWorship.objects.filter(member=member, worship=worship).exists():
            return Response(
                {"error": "Member is already attending this worship"},
                status=status.HTTP_400_BAD_REQUEST,
            )

        # Add the member to the worship
        MemberWorship.objects.create(member=member, worship=worship)

        return Response(
            {"message": "Attendee added successfully"}, status=status.HTTP_201_CREATED
        )


class WorshipRemoveAttendee(views.APIView):
    def post(self, request, worship_id):
        worship = get_object_or_404(Worship, pk=worship_id)
        member_id = request.data.get("member_id")

        if not member_id:
            return Response(
                {"error": "member_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        member = get_object_or_404(Member, pk=member_id)

        # Check if the member is already attending this worship
        if MemberWorship.objects.filter(member=member, worship=worship).exists():
            MemberWorship.objects.filter(id=member_id).delete()

        return Response(
            {"message": "Attendee deleted successfully"}, status=status.HTTP_201_CREATED
        )


class WorshipAddGuest(views.APIView):
    def post(self, request, worship_id):
        worship = get_object_or_404(Worship, pk=worship_id)
        name = request.data.get("name")
        nation = request.data.get("nation")
        email = request.data.get("email")
        invited_by = request.data.get("invited_by")

        if not name:
            return Response(
                {"error": "name is required"}, status=status.HTTP_400_BAD_REQUEST
            )
        if not nation:
            return Response(
                {"error": "nation is required"}, status=status.HTTP_400_BAD_REQUEST
            )
        if not email:
            return Response(
                {"error": "email is required"}, status=status.HTTP_400_BAD_REQUEST
            )
        if not invited_by:
            return Response(
                {"error": "invited by is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        guest = Guest.objects.create(
            name=name, nation=nation, email=email, invited_by=invited_by
        )
        GuestWorship.objects.create(guest_id=guest.id, worship_id=worship)
        return Response(
            {"message": "Guest added successfully"}, status=status.HTTP_201_CREATED
        )


class WorshipRemoveGuest(views.APIView):
    def post(self, request, worship_id):
        worship = get_object_or_404(Worship, pk=worship_id)
        guest_id = request.data.get("guest_id")

        if not guest_id:
            return Response(
                {"error": "guest_id is required"}, status=status.HTTP_400_BAD_REQUEST
            )

        member = get_object_or_404(Member, pk=guest_id)

        # Check if the member is already attending this worship
        if MemberWorship.objects.filter(member=member, worship=worship).exists():
            MemberWorship.objects.filter(id=guest_id).delete()

        return Response(
            {"message": "Guest deleted successfully"}, status=status.HTTP_201_CREATED
        )

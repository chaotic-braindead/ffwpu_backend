from rest_framework import generics
from rest_framework.filters import OrderingFilter
from django_filters.rest_framework import DjangoFilterBackend
from .models import Donation
from .serializers import DonationSerializer


class DonationListCreate(generics.ListCreateAPIView):
    queryset = Donation.objects.select_related("member")
    serializer_class = DonationSerializer
    model = serializer_class.Meta.model
    filter_backends = [OrderingFilter, DjangoFilterBackend]
    permission_classes = []
    ordering_fields = ["date", "amount"]
    filterset_fields = ["member", "church"]


class DonationRetrieveDeleteUpdate(generics.RetrieveUpdateDestroyAPIView):
    queryset = Donation.objects.select_related("member")
    serializer_class = DonationSerializer
    model = serializer_class.Meta.model

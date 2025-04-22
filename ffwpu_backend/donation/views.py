from .serializers import *
from rest_framework import viewsets

# Create your views here.


class DonationViewSet(viewsets.ModelViewSet):
    queryset = Donation.objects.all()
    serializer_class = DonationSerializer

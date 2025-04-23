from .serializers import *
from rest_framework import viewsets
from rest_framework.response import Response
from rest_framework import status

# Create your views here.


class WorshipEventViewSet(viewsets.ModelViewSet):
    queryset = WorshipEvent.objects.all()
    serializer_class = WorshipEventSerializer


class WorshipAttendeeViewSet(viewsets.ModelViewSet):
    queryset = WorshipAttendee.objects.all()
    serializer_class = WorshipAttendeeSerializer


class WorshipImageViewSet(viewsets.ModelViewSet):
    queryset = WorshipImage.objects.all()
    serializer_class = WorshipImageSerializer

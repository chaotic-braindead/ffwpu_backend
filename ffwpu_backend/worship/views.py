from .serializers import *
from rest_framework import viewsets

# Create your views here.


class WorshipEventViewSet(viewsets.ModelViewSet):
    queryset = WorshipEvent.objects.all()
    serializer_class = WorshipEventSerializer


class WorshipAttendeeViewSet(viewsets.ModelViewSet):
    queryset = WorshipAttendee.objects.all()
    serializer_class = WorshipAttendeeSerializer

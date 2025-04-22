from django.shortcuts import render
from rest_framework import viewsets
from .serializers import *
from rest_framework.response import Response
from rest_framework import status

# Create your views here.


class MemberViewSet(viewsets.ModelViewSet):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer


class MemberMissionViewSet(viewsets.ModelViewSet):
    queryset = MemberMission.objects.all()
    serializer_class = MemberMissionSerializer

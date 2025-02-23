from rest_framework import generics
from .models import Worship
from .serializers import WorshipSerializer
from rest_framework.filters import OrderingFilter
from django_filters.rest_framework import DjangoFilterBackend


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

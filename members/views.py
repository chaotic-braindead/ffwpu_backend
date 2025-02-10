from rest_framework import generics
from .models import Member
from .serializers import MemberSerializer
from rest_framework.permissions import IsAdminUser
from rest_framework import status
from rest_framework.filters import OrderingFilter
from django_filters.rest_framework import DjangoFilterBackend


class MemberList(generics.ListAPIView):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer
    permission_classes = []
    model = serializer_class.Meta.model
    filter_backends = [OrderingFilter, DjangoFilterBackend]
    ordering_fields = ["country", "age"]
    filterset_fields = ["gender", "marital_status", "membership_category"]


class MemberCreate(generics.ListCreateAPIView):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer
    permission_classes = []

    def create(self, request, *args, **kwargs):
        print(request.data)
        return super().create(request, *args, **kwargs)


class MemberRetrieveDeleteUpdate(generics.RetrieveUpdateDestroyAPIView):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer
    permission_classes = []


# class MemberEdit(generics.)

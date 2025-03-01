from rest_framework import generics
from .models import Member, Church, Currency, Country
from .serializers import *
from rest_framework.filters import OrderingFilter
from django_filters.rest_framework import DjangoFilterBackend


class MemberListCreate(generics.ListCreateAPIView):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer
    model = serializer_class.Meta.model
    filter_backends = [OrderingFilter, DjangoFilterBackend]
    permission_classes = []
    ordering_fields = ["country", "age"]
    filterset_fields = ["gender", "marital_status", "membership_category"]


class MemberRetrieveDeleteUpdate(generics.RetrieveUpdateDestroyAPIView):
    queryset = Member.objects.all()
    serializer_class = MemberSerializer


class ChurchListCreate(generics.ListCreateAPIView):
    queryset = Church.objects.all()
    serializer_class = ChurchSerializer
    permission_classes = []
    model = serializer_class.Meta.model


class ChurchRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Church.objects.all()
    serializer_class = ChurchSerializer
    model = serializer_class.Meta.model


class CurrencyListCreate(generics.ListCreateAPIView):
    queryset = Currency.objects.all()
    serializer_class = CurrencySerializer
    permission_classes = []
    model = serializer_class.Meta.model


class CurrencyRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Currency.objects.all()
    serializer_class = CurrencySerializer
    model = serializer_class.Meta.model


class CountryListCreate(generics.ListCreateAPIView):
    queryset = Country.objects.all()
    serializer_class = CountrySerializer
    permission_classes = []
    model = serializer_class.Meta.model


class CountryRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Country.objects.all()
    serializer_class = CountrySerializer
    model = serializer_class.Meta.model
    permission_classes = []


class FamilyListCreate(generics.ListCreateAPIView):
    queryset = Family.objects.all()
    serializer_class = FamilySerializer
    permission_classes = []
    model = serializer_class.Meta.model


class FamilyRetrieveUpdateDelete(generics.RetrieveUpdateDestroyAPIView):
    queryset = Family.objects.all()
    serializer_class = FamilySerializer
    model = serializer_class.Meta.model
    permission_classes = []

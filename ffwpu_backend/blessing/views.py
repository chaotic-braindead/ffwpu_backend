from rest_framework import viewsets
from .serializers import *


# Create your views here.
class BlessingViewSet(viewsets.ModelViewSet):
    queryset = Blessing.objects.all()
    serializer_class = BlessingSerializer


class BlessingRecipientViewSet(viewsets.ModelViewSet):
    queryset = BlessingRecipient.objects.all()
    serializer_class = BlessingRecipientSerializer

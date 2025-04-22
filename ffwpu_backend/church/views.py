from rest_framework import viewsets
from .serializers import *

# Create your views here.


class ChurchViewSet(viewsets.ModelViewSet):
    queryset = Church.objects.all()
    serializer_class = ChurchSerializer

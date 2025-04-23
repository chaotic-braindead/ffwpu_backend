from rest_framework import viewsets
from .serializers import *
from rest_framework.response import Response
from rest_framework import status


# Create your views here.
class BlessingViewSet(viewsets.ModelViewSet):
    queryset = Blessing.objects.all()
    serializer_class = BlessingSerializer


class BlessingRecipientViewSet(viewsets.ModelViewSet):
    queryset = BlessingRecipient.objects.all()
    serializer_class = BlessingRecipientSerializer

    def create(self, request, *args, **kwargs):
        print("CREATE")
        serializer = self.get_serializer(data=request.data)
        if not serializer.is_valid():
            print(serializer.errors)
            return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
        serializer.save()
        return Response(serializer.data)

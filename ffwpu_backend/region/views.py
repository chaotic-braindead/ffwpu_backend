from rest_framework import viewsets
from .serializers import *
from rest_framework.response import Response
from rest_framework import status

# Create your views here.


class RegionViewSet(viewsets.ModelViewSet):
    queryset = Region.objects.all()
    serializer_class = RegionSerializer

    def create(self, request, *args, **kwargs):
        # Check if the region name already exists
        region_name = request.data.get("name")
        if Region.objects.filter(name=region_name).exists():
            return Response(
                {"error": "Region with this name already exists."},
                status=status.HTTP_400_BAD_REQUEST,
            )
        return super().create(request, *args, **kwargs)


class SubregionViewSet(viewsets.ModelViewSet):
    queryset = Subregion.objects.all()
    serializer_class = SubregionSerializer

    def create(self, request, *args, **kwargs):
        # Check if the subregion name already exists
        subregion_name = request.data.get("name")
        region_id = request.data.get("region")
        if Subregion.objects.filter(name=subregion_name, region_id=region_id).exists():
            return Response(
                {
                    "error": "Subregion with this name already exists in the specified region."
                },
                status=status.HTTP_400_BAD_REQUEST,
            )
        return super().create(request, *args, **kwargs)

from rest_framework import viewsets
from .serializers import *
from rest_framework.response import Response
from rest_framework import status

# Create your views here.


class ChurchViewSet(viewsets.ModelViewSet):
    queryset = Church.objects.all()
    serializer_class = ChurchSerializer

    def create(self, request, *args, **kwargs):
        # Check if the church name already exists
        church_name = request.data.get("name")
        region_id = request.data.get("region")
        subregion_id = request.data.get("subregion")
        if Church.objects.filter(
            name=church_name, region_id=region_id, subregion_id=subregion_id
        ).exists():
            return Response(
                {
                    "error": "Church with this name already exists in the specified region."
                },
                status=status.HTTP_400_BAD_REQUEST,
            )
        return super().create(request, *args, **kwargs)

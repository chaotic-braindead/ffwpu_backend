from rest_framework import serializers
from .models import *


class SubregionSerializer(serializers.ModelSerializer):
    class Meta:
        fields = "__all__"
        model = Subregion


class RegionSerializer(serializers.ModelSerializer):
    subregions = serializers.SerializerMethodField()

    class Meta:
        fields = "__all__"
        model = Region

    def get_subregions(self, instance):
        return SubregionSerializer(
            Subregion.objects.filter(region=instance), many=True
        ).data

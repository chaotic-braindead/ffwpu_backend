from rest_framework import serializers
from .models import *


class RegionSerializer(serializers.ModelSerializer):
    class Meta:
        fields = "__all__"
        model = Region


class SubregionSerializer(serializers.ModelSerializer):
    class Meta:
        fields = "__all__"
        model = Subregion

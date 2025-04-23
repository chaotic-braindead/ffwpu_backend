from rest_framework import serializers
from .models import *
import string


class ChurchSerializer(serializers.ModelSerializer):
    class Meta:
        model = Church
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }

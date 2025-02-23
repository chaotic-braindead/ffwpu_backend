from rest_framework import serializers
from models import Worship
import string


class WorshipSerializer(serializers.ModelSerializer):
    class Meta:
        model = Worship
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (
                string.capwords(key.replace("_", " "))
                if "worship_id" not in key
                else "Worship ID"
            ): value
            for key, value in data.items()
        }

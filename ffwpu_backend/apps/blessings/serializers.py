from rest_framework import serializers
from .models import *
from members.serializers import MemberSerializer
import string


class BlessingSerializer(serializers.ModelSerializer):
    members = MemberSerializer(many=True, read_only=True)

    class Meta:
        model = Blessing
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["chaenbo"] = instance.get_chaenbo_display()
        return {
            (
                string.capwords(key.replace("_", " ")) if key != "id" else "Blessing ID"
            ): value
            for key, value in data.items()
        }

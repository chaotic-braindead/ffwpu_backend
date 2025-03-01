from rest_framework import serializers
from .models import Donation
import string


class DonationSerializer(serializers.ModelSerializer):
    class Meta:
        model = Donation
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " "))): value
            for key, value in data.items()
        }

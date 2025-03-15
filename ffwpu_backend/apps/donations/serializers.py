from rest_framework import serializers
from .models import Donation
import string
from members.serializers import MemberSerializer, ChurchSerializer


class DonationSerializer(serializers.ModelSerializer):
    member = MemberSerializer()
    church = ChurchSerializer()

    class Meta:
        model = Donation
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (
                string.capwords(key.replace("_", " ")) if key != "id" else "Donation ID"
            ): value
            for key, value in data.items()
        }

from rest_framework import serializers
from .models import Donation
import string
from members.serializers import MemberSerializer, ChurchSerializer
from members.models import Member, Church


class DonationSerializer(serializers.ModelSerializer):
    member = serializers.PrimaryKeyRelatedField(queryset=Member.objects.all())
    church = serializers.PrimaryKeyRelatedField(queryset=Church.objects.all())

    class Meta:
        model = Donation
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["member"] = MemberSerializer(instance.member).data
        data["church"] = ChurchSerializer(instance.church).data
        return {
            (
                string.capwords(key.replace("_", " ")) if key != "id" else "Donation ID"
            ): value
            for key, value in data.items()
        }

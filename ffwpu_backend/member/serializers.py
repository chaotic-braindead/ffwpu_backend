from rest_framework import serializers
from region.serializers import *
from .models import *
import string


class MemberMissionSerializer(serializers.ModelSerializer):
    class Meta:
        model = MemberMission
        fields = "__all__"


class MemberSerializer(serializers.ModelSerializer):
    full_name = serializers.ReadOnlyField()
    age = serializers.ReadOnlyField()
    missions = serializers.SerializerMethodField()
    region = serializers.PrimaryKeyRelatedField(queryset=Region.objects.all())

    class Meta:
        model = Member
        fields = "__all__"
        read_only_fields = ["age"]

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["region"] = RegionSerializer(instance.region).data
        data["subregion"] = SubregionSerializer(instance.subregion).data
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }

    def get_missions(self, instance):
        return MemberMissionSerializer(
            MemberMission.objects.filter(member=instance), many=True
        ).data

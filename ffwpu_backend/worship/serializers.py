from rest_framework import serializers
from .models import *
from member.serializers import *
import string
from church.serializers import *


class WorshipAttendeeSerializer(serializers.ModelSerializer):
    member = serializers.PrimaryKeyRelatedField(
        allow_null=True, queryset=Member.objects.all(), required=False
    )

    class Meta:
        model = WorshipAttendee
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        if instance.member:
            data["member"] = MemberSerializer(instance.member).data
        if instance.invited_by:
            data["invited_by"] = MemberSerializer(instance.invited_by).data
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }


class WorshipImageSerializer(serializers.ModelSerializer):
    class Meta:
        model = WorshipImage
        fields = "__all__"


class WorshipEventSerializer(serializers.ModelSerializer):
    attendees = serializers.SerializerMethodField()
    images = serializers.SerializerMethodField()

    class Meta:
        model = WorshipEvent
        fields = "__all__"

    def get_attendees(self, instance):
        return WorshipAttendeeSerializer(
            WorshipAttendee.objects.filter(worship=instance.id), many=True
        ).data

    def get_images(self, instance):
        return WorshipImageSerializer(
            WorshipImage.objects.filter(worship=instance.id), many=True
        ).data

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["church"] = ChurchSerializer(instance.church).data
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }

from rest_framework import serializers
from .models import Worship
from members.serializers import MemberSerializer, ChurchSerializer
from members.models import Member, MemberWorship, Church
import string


class WorshipSerializer(serializers.ModelSerializer):
    attendees = serializers.SerializerMethodField()
    # worship_type = serializers.CharField(
    #     source="get_worship_type_display", read_only=True
    # )
    church = serializers.SerializerMethodField()

    class Meta:
        model = Worship
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["worship_type"] = instance.get_worship_type_display()

        return {
            (
                string.capwords(key.replace("_", " "))
                if "worship_id" not in key
                else "Worship ID"
            ): value
            for key, value in data.items()
        }

    def get_attendees(self, obj):
        members = Member.objects.filter(memberworship__worship=obj)
        return MemberSerializer(members, many=True).data

    def get_church(self, obj):
        return obj.church.name
        # return ChurchSerializer(church).data


class MemberWorshipSerializer(serializers.ModelSerializer):
    class Meta:
        model = MemberWorship
        fields = ["member", "worship"]

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " "))): value
            for key, value in data.items()
        }

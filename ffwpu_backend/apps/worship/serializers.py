from rest_framework import serializers
from .models import Worship
from members.serializers import MemberSerializer
from members.models import Member, MemberWorship
import string


class WorshipSerializer(serializers.ModelSerializer):
    attendees = serializers.SerializerMethodField()

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

    def get_members(self, obj):
        members = Member.objects.filter(memberworship__worship=obj)
        return MemberSerializer(members, many=True).data


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

from rest_framework import serializers
from .models import *
from member.models import Member


class WorshipEventSerializer(serializers.ModelSerializer):
    attendees = serializers.SerializerMethodField()

    class Meta:
        model = WorshipEvent
        fields = "__all__"

    def get_attendees(self, instance):
        return WorshipAttendee.objects.filter(worship=instance.id)


class WorshipAttendeeSerializer(serializers.ModelSerializer):
    member = serializers.PrimaryKeyRelatedField(
        allow_null=True, queryset=Member.objects.all()
    )

    class Meta:
        model = WorshipAttendee
        fields = "__all__"

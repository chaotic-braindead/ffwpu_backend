from rest_framework import serializers
from .models import *
from member.models import *


class DonationSerializer(serializers.ModelSerializer):
    member = serializers.SerializerMethodField()

    class Meta:
        model = Donation
        fields = "__all__"

    def get_member(self, instance):
        return Member.objects.get(instance.member.id)

from rest_framework import serializers
from .models import *
from members.serializers import MemberSerializer
from members.models import Member


class BlessingSerializer(serializers.ModelSerializer):
    members = MemberSerializer(many=True, read_only=True)

    class Meta:
        model = Blessing
        fields = "__all__"

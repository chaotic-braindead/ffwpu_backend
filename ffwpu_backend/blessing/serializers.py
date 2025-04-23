from .models import *
from rest_framework import serializers
from member.serializers import *
import string


class BlessingRecipientSerializer(serializers.ModelSerializer):
    member = serializers.PrimaryKeyRelatedField(
        allow_null=True, queryset=Member.objects.all(), required=False
    )

    class Meta:
        model = BlessingRecipient
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        if instance.member:
            data["member"] = MemberSerializer(instance.member).data
        if instance.invited_by:
            data["invited_by"] = MemberSerializer(instance.member).data
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }


class BlessingSerializer(serializers.ModelSerializer):
    recipients = serializers.SerializerMethodField()

    class Meta:
        model = Blessing
        fields = "__all__"

    def get_recipients(self, instance):
        return BlessingRecipientSerializer(
            BlessingRecipient.objects.filter(blessing=instance.id), many=True
        ).data

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " ")) if key != "id" else "ID"): value
            for key, value in data.items()
        }

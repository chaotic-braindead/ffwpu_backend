from .models import *
from rest_framework import serializers
from member.models import Member


class BlessingSerializer(serializers.ModelSerializer):
    recipients = serializers.SerializerMethodField()

    class Meta:
        model = Blessing
        fields = "__all__"

    def get_recipients(self, instance):
        return BlessingRecipient.objects.filter(blessing=instance.id)


class BlessingRecipientSerializer(serializers.ModelSerializer):
    member = serializers.PrimaryKeyRelatedField(
        allow_null=True, queryset=Member.objects.all()
    )

    class Meta:
        model = BlessingRecipient
        fields = "__all__"

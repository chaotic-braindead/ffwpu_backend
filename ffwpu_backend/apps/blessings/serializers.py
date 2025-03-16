from rest_framework import serializers
from .models import *
from members.serializers import MemberSerializer
from worship.serializers import GuestSerializer
import string


class BlessingSerializer(serializers.ModelSerializer):
    members = MemberSerializer(many=True, read_only=True)
    guests = serializers.SerializerMethodField()

    class Meta:
        model = Blessing
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["chaenbo"] = instance.get_chaenbo_display()
        return {
            (
                string.capwords(key.replace("_", " ")) if key != "id" else "Blessing ID"
            ): value
            for key, value in data.items()
        }

    def get_guests(self, obj):
        guests = Guest.objects.filter(guestblessing__blessing=obj)
        return GuestSerializer(guests, many=True).data

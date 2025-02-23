from rest_framework import serializers
from .models import Member
import string


class MemberSerializer(serializers.ModelSerializer):
    full_name = serializers.ReadOnlyField()
    age = serializers.ReadOnlyField()

    class Meta:
        model = Member
        fields = "__all__"
        read_only_fields = ["member_id", "full_name", "age"]

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (
                string.capwords(key.replace("_", " "))
                if "member_id" not in key
                else "Member ID"
            ): value
            for key, value in data.items()
        }

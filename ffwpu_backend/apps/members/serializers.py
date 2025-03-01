from rest_framework import serializers
from .models import *
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


class ChurchSerializer(serializers.ModelSerializer):
    class Meta:
        model = Church
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " ")) if "id" not in key else "ID"): value
            for key, value in data.items()
        }


class CurrencySerializer(serializers.ModelSerializer):
    class Meta:
        model = Currency
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " ")) if "id" not in key else "ID"): value
            for key, value in data.items()
        }


class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = Country
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " ")) if "id" not in key else "ID"): value
            for key, value in data.items()
        }

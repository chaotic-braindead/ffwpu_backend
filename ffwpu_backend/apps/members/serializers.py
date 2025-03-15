from rest_framework import serializers
from .models import *

import string


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


class FamilySerializer(serializers.ModelSerializer):
    class Meta:
        model = Family
        fields = "__all__"

    def to_representation(self, instance):
        data = super().to_representation(instance)
        return {
            (string.capwords(key.replace("_", " "))): value
            for key, value in data.items()
        }


class MemberSerializer(serializers.ModelSerializer):
    full_name = serializers.ReadOnlyField()
    age = serializers.ReadOnlyField()
    region = serializers.CharField(source="country.region", read_only=True)
    worships = serializers.SerializerMethodField()

    class Meta:
        model = Member
        fields = "__all__"
        read_only_fields = ["member_id", "full_name", "age"]

    def to_representation(self, instance):
        data = super().to_representation(instance)
        data["gender"] = instance.get_gender_display()
        data["title"] = instance.get_title_display()
        data["marital_status"] = instance.get_marital_status_display()
        data["membership_category"] = instance.get_membership_category_display()
        return {
            (
                string.capwords(key.replace("_", " "))
                if "member_id" not in key
                else "Member ID"
            ): value
            for key, value in data.items()
        }

    def get_worships(self, obj):
        return [
            {
                "ID": worship.worship_id,
                "Name": worship.name,
                "Date": worship.date,
                "Church": worship.church.name,
            }
            for worship in obj.worships.all()
        ]

    # def create(self, validated_data):

    #     nation = validated_data.pop("country")
    #     country = Country.objects.get(pk=nation["nation"])
    #     member = Member.objects.create(country=country, **validated_data)
    #     return member

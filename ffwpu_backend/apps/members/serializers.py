from rest_framework import serializers
from .models import Member


class MemberSerializer(serializers.ModelSerializer):
    full_name = serializers.ReadOnlyField()
    age = serializers.ReadOnlyField()

    class Meta:
        model = Member
        # fields = [
        #     "country",
        #     "photo",
        #     "title",
        #     "given_name",
        #     "middle_name",
        #     "family_name",
        #     "full_name",
        #     "gender",
        #     "date_of_birth",
        #     "age",
        #     'email',
        #     'phone',
        #     'marital_status'
        # ]
        fields = "__all__"
        read_only_fields = ["member_id", "full_name", "age"]

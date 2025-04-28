from django.db import models
from datetime import date
import os
import uuid
from django.utils.text import slugify


# Create your models here.
def upload_member_photo(instance, filename):
    ext = filename.split(".")[-1]
    name = slugify(instance.name)
    # Optional: generate a unique ID to prevent file overwrites
    filename = f"{name}-{uuid.uuid4().hex[:8]}.{ext}"
    return os.path.join("member/photos/", filename)


class Member(models.Model):
    class Gender(models.TextChoices):
        MALE = "Male"
        FEMALE = "Female"

    class MaritalStatus(models.TextChoices):
        SINGLE = "Single"
        MARRIED = "Married"

    class MembershipCategory(models.TextChoices):
        REGULAR = "Regular"
        ASSOCIATE = "Associate"
        REGISTERED = "Registered"
        INACTIVE = "Inactive"

    given_name = models.CharField(max_length=255)
    middle_name = models.CharField(max_length=255, null=True, blank=True)
    family_name = models.CharField(max_length=255)
    gender = models.TextField(choices=Gender)
    birthday = models.DateField()
    region = models.ForeignKey(to="region.Region", on_delete=models.CASCADE)
    subregion = models.ForeignKey(
        to="region.Subregion", on_delete=models.CASCADE, default=1
    )
    nation = models.CharField(max_length=255)
    marital_status = models.TextField(choices=MaritalStatus)
    name_of_spouse = models.CharField(max_length=255, null=True, blank=True)
    phone = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    address = models.CharField(max_length=255)
    image = models.ImageField(upload_to=upload_member_photo, blank=True, null=True)

    generation = models.CharField(max_length=255)
    blessing_status = models.CharField(max_length=255)
    spiritual_birthday = models.DateField()
    spiritual_parent = models.CharField(max_length=255)
    membership_category = models.TextField(choices=MembershipCategory)

    @property
    def age(self):
        today = date.today()
        if self.birthday:
            return (
                today.year
                - self.birthday.year
                - ((today.month, today.day) < (self.birthday.month, self.birthday.day))
            )
        return None

    @property
    def full_name(self):
        f = self.given_name + " "
        if self.middle_name:
            f += self.middle_name + " "
        f += self.family_name
        return f


class MemberMission(models.Model):
    member = models.ForeignKey(
        to=Member, on_delete=models.CASCADE, related_name="missions"
    )
    role = models.CharField(max_length=255)
    organization = models.CharField(max_length=255)
    country = models.CharField(max_length=255)
    start_date = models.DateField()
    end_date = models.DateField()

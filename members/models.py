from django.db import models
from django.contrib.auth.models import AbstractBaseUser, BaseUserManager


class Country(models.Model):
    subregion = models.CharField(name="subregion", max_length=64)
    nation = models.CharField(name="nation", max_length=64, primary_key=True)


class Church(models.Model):
    name = models.CharField("name", unique=True, max_length=64)
    country = models.ForeignKey(to=Country, on_delete=models.CASCADE)


class Family(models.Model):
    country = models.ForeignKey(to=Country, on_delete=models.CASCADE)
    name = models.CharField(max_length=64)


class MemberManager(BaseUserManager):
    def create_member(self, member_id, password, **extra_fields):
        if not member_id:
            raise ValueError(f"Member ID must be set")
        user = self.model(member_id=member_id)
        user.set_password(password)
        user.save()


class Member(AbstractBaseUser):
    username = None
    member_id = models.CharField(name="member_id", primary_key=True, max_length=9)
    country = models.ForeignKey(to=Country, on_delete=models.CASCADE)
    photo = models.CharField(max_length=255)
    title = models.IntegerField(choices=[(1, "Mr."), (2, "Ms."), (3, "Mrs.")])
    given_name = models.CharField(max_length=64)
    middle_name = models.CharField(max_length=64)
    family_name = models.CharField(max_length=64)
    gender = models.IntegerField(choices=[(1, "Male"), (2, "Female")])
    date_of_birth = models.DateField()
    # blessing_status =
    email = models.EmailField()
    phone = models.CharField(max_length=15)
    # blessed_year =
    marital_status = models.IntegerField(
        choices=[(1, "Single"), (2, "Married"), (3, "Separated"), (4, "Divorced")]
    )
    spouse = models.ForeignKey(
        "self", on_delete=models.CASCADE, related_name="member_spouse"
    )
    spiritual_birthday = models.DateField()
    spiritual_parent = models.ForeignKey(
        "self", on_delete=models.CASCADE, related_name="member_spiritual_parent"
    )
    address = models.CharField(max_length=255)
    # seongwha =
    age = models.IntegerField()
    membership_category = models.IntegerField(
        choices=[(1, "Regular"), (2, "Associate"), (3, "Registered"), (4, "Inactive")]
    )
    # full name
    # related_donation_reg
    # related_worship_reg
    # related_guest
    family = models.ForeignKey(to=Family, on_delete=models.CASCADE)
    USERNAME_FIELD = "member_id"
    objects = MemberManager()

    def __str__(self):
        return f"Member {self.member_id}"

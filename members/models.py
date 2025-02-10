from django.db import models
from datetime import date, datetime


class Currency(models.Model):
    code = models.CharField(max_length=3, primary_key=True)

    def __str__(self):
        return self.code


class Country(models.Model):
    subregion = models.CharField(name="subregion", max_length=64, blank=True, null=True)
    nation = models.CharField(name="nation", max_length=64, primary_key=True)
    currency = models.ForeignKey(to=Currency, on_delete=models.CASCADE)

    def __str__(self):
        return self.nation


class Church(models.Model):
    name = models.CharField("name", unique=True, max_length=64)
    country = models.ForeignKey(to=Country, on_delete=models.CASCADE)

    def __str__(self):
        return f"{self.name} ({self.country})"


class Family(models.Model):
    church = models.ForeignKey(to=Church, on_delete=models.CASCADE)
    name = models.CharField(max_length=64)

    def __str__(self):
        return f"{self.name} ({self.church})"


class Member(models.Model):
    member_id = models.AutoField(primary_key=True)
    country = models.ForeignKey(to=Country, on_delete=models.CASCADE)
    photo = models.CharField(max_length=255, blank=True)
    title = models.IntegerField(choices=[(1, "Mr."), (2, "Ms."), (3, "Mrs.")])
    given_name = models.CharField(max_length=64)
    middle_name = models.CharField(max_length=64, blank=True)
    family_name = models.CharField(max_length=64)
    gender = models.IntegerField(choices=[(1, "Male"), (2, "Female")])
    date_of_birth = models.DateField()
    generation = models.CharField(max_length=64)
    blessing_status = models.CharField(max_length=64)
    email = models.EmailField()
    phone = models.CharField(max_length=15)
    blessed_year = models.DateField()
    marital_status = models.IntegerField(
        choices=[(1, "Single"), (2, "Married"), (3, "Separated"), (4, "Divorced")]
    )
    spouse = models.ForeignKey(
        "self",
        on_delete=models.CASCADE,
        related_name="member_spouse",
        blank=True,
        null=True,
    )
    spiritual_birthday = models.DateField()
    spiritual_parent = models.ForeignKey(
        "self",
        on_delete=models.CASCADE,
        related_name="member_spiritual_parent",
        blank=True,
        null=True,
    )
    address = models.CharField(max_length=255)
    # seongwha =
    membership_category = models.IntegerField(
        choices=[(1, "Regular"), (2, "Associate"), (3, "Registered"), (4, "Inactive")]
    )
    # related_donation_reg
    # related_worship_reg
    # related_guest
    family = models.ForeignKey(
        to=Family, on_delete=models.CASCADE, blank=True, null=True
    )

    @property
    def full_name(self):
        return f"{self.given_name}{f" {self.middle_name}" if self.middle_name else ""} {self.family_name}"

    @property
    def age(self):
        born = datetime.strptime(str(self.date_of_birth), "%Y-%m-%d").date()
        today = date.today()
        return (
            today.year - born.year - ((today.month, today.day) < (born.month, born.day))
        )

    def __str__(self):
        return f"{self.member_id} - {self.full_name} ({self.country})"

from django.db import models


# Create your models here.
class Blessing(models.Model):
    class Chaenbo(models.TextChoices):
        VERTICAL = "Vertical"
        HORIZONTAL = "Horizontal"

    name = models.CharField(max_length=255)
    date = models.DateField()
    chaenbo = models.TextField(choices=Chaenbo)


class BlessingRecipient(models.Model):
    class Type(models.TextChoices):
        MEMBER = "Member"
        GUEST = "Guest"

    blessing = models.ForeignKey(to=Blessing, on_delete=models.CASCADE)
    type = models.TextField(choices=Type)
    member = models.ForeignKey(
        to="member.Member",
        on_delete=models.CASCADE,
        blank=True,
        null=True,
        related_name="blessing_member",
    )
    full_name = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    invited_by = models.ForeignKey(
        to="member.Member",
        blank=True,
        null=True,
        on_delete=models.SET_NULL,
        related_name="blessing_invited_by",
    )

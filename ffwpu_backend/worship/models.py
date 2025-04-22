from django.db import models
import os
import uuid
from django.utils.text import slugify


def upload_worship_photo(instance, filename):
    ext = filename.split(".")[-1]
    name = slugify(instance.name)
    # Optional: generate a unique ID to prevent file overwrites
    filename = f"{name}-{uuid.uuid4().hex[:8]}.{ext}"
    return os.path.join("worship/photos/", filename)


# Create your models here.
class WorshipEvent(models.Model):
    class Type(models.TextChoices):
        ONSITE = "Onsite"
        ONLINE = "Online"

    event_name = models.CharField(max_length=255)
    date = models.DateField()
    worship_type = models.TextField(choices=Type)
    church = models.ForeignKey(to="church.Church", on_delete=models.CASCADE)
    photo = models.ImageField(upload_to=upload_worship_photo, blank=True, null=True)


class WorshipAttendee(models.Model):
    class Type(models.TextChoices):
        MEMBER = "Member"
        GUEST = "Guest"

    worship = models.ForeignKey(to=WorshipEvent, on_delete=models.CASCADE)
    type = models.TextField(choices=Type)
    member = models.ForeignKey(
        to="member.Member",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="worship_member",
    )
    full_name = models.CharField(max_length=255, blank=True, null=True)
    email = models.CharField(max_length=255, blank=True, null=True)
    invited_by = models.ForeignKey(
        to="member.Member",
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name="worship_invited_by",
    )

from django.db import models
from members.models import Member


class Blessing(models.Model):
    blessing_date = models.DateField()
    name_of_blessing = models.CharField(max_length=255)
    members = models.ManyToManyField(Member, related_name="blessings")
    chaenbo = models.IntegerField(
        choices=[(1, "Vertical"), (2, "Horizontal")], default=1
    )

from django.db import models
from members.models import Church


class Worship(models.Model):
    worship_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    date = models.DateField()
    church = models.ForeignKey(to=Church, on_delete=models.CASCADE)
    worship_type = models.IntegerField(choices=[(1, "Onsite"), (2, "Online")])

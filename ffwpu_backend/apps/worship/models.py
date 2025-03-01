from django.db import models


class Worship(models.Model):
    worship_id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255)
    date = models.DateField()
    church = models.ForeignKey(to="members.Church", on_delete=models.CASCADE)
    worship_type = models.IntegerField(choices=[(1, "Onsite"), (2, "Online")])


class Guest(models.Model):
    name = models.CharField(max_length=255)
    nation = models.CharField(max_length=255)
    email = models.CharField(max_length=255)
    invited_by = models.ForeignKey(to="members.Member", on_delete=models.SET_NULL)


class GuestWorship(models.Model):
    worship_id = models.ForeignKey(to=Worship, on_delete=models.CASCADE)
    guest_id = models.ForeignKey(to=Guest, on_delete=models.CASCADE)

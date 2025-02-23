from django.db import models


class Blessing(models.Model):
    blessing_date = models.DateField()
    name_of_blessing = models.CharField(max_length=255, primary_key=True)


class BlessingList(models.Model):
    blessing = models.ForeignKey(to=Blessing, on_delete=models.CASCADE)
    member = models.ForeignKey(to="members.Member", on_delete=models.CASCADE)

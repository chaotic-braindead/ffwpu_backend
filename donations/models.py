from django.db import models
from members.models import Member, Church


class Currency(models.Model):
    name = models.CharField(max_length=3, primary_key=True)


class Donation(models.Model):
    member = models.ForeignKey(to=Member, on_delete=models.CASCADE)
    date = models.DateField()
    church = models.ForeignKey(to=Church, on_delete=models.CASCADE)
    amount = models.DecimalField(decimal_places=2, max_digits=12)
    currency = models

from django.db import models


# Create your models here.
class Donation(models.Model):
    member = models.ForeignKey(to="member.Member", on_delete=models.CASCADE)
    date = models.DateField()
    church = models.ForeignKey(to="church.Church", on_delete=models.CASCADE)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    currency = models.CharField(255)

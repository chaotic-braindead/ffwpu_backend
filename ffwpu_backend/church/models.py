from django.db import models


# Create your models here.
class Church(models.Model):
    name = models.CharField("name", unique=True, max_length=64)
    region = models.ForeignKey(to="region.Region", on_delete=models.CASCADE)
    country = models.CharField(max_length=255)

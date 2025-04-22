from django.db import models


# Create your models here.
class Region(models.Model):
    name = models.CharField(max_length=255)


class Subregion(models.Model):
    region = models.ForeignKey(to=Region, on_delete=models.CASCADE)
    name = models.CharField(max_length=255)

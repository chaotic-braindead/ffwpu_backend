from django.db import models


# Create your models here.
class Church(models.Model):
    name = models.CharField("name", unique=True, max_length=64)
    region = models.ForeignKey(to="region.Region", on_delete=models.CASCADE)
    subregion = models.ForeignKey(
        to="region.Subregion", on_delete=models.CASCADE, default=1
    )
    country = models.CharField(max_length=255)

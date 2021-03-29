from django.db import models
from django.contrib.auth.models import AbstractUser

class RainbowUser(AbstractUser):
    pass

class Color(models.Model):
    name = models.CharField(max_length=100,)
    hex = models.CharField(max_length=7)
    # rgb = ArrayField(models.PositiveIntegerField())    
    red = models.PositiveIntegerField(null=True)
    green = models.PositiveIntegerField(null=True)
    blue = models.PositiveIntegerField(null=True)
    hsl_sat = models.CharField(max_length=5)
    # 5 with the percent symbol, they prolly wouldn't be queried often
    hsl_light = models.CharField(max_length=5)
    hsv_sat = models.CharField(max_length=5)
    hsv_val = models.CharField(max_length=5)
    hue = models.CharField(max_length=10, blank=True) # some neutral colors have no hue
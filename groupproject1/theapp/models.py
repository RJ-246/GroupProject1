from django.db import models

# Create your models here.
class Donut(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=50)
    img_url = models.CharField(max_length=150)
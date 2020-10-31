from django.db import models

class Counter(models.Model):
    key = models.CharField(max_length=10)
    value = models.IntegerField() 

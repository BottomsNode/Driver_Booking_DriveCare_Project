from django.db import models

# Create your models here.


#tabel with FK

class Career(models.Model):
    career = models.CharField(max_length=250)
    def __str__(self):
        return self.career


#table candidate
GENDER =(
    ('F','F'),
    ('M','M'),
)
class Candidate(models.Model):
    name = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=100)
    gender = models.CharField(max_length=2, null=True, choices=GENDER)
    career = models.ForeignKey(Career,on_delete=models.CASCADE)
    def __str__(self):
        return self.name

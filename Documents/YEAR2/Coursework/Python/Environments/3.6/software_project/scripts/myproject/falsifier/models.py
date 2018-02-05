from django.db import models


# Create your models here.
class Search(models.Model):
    userID = models.IntegerField(null = True)
    keywordSearch = models.CharField(max_length=255,null= True)


    def __str__(self):
        return self.userID

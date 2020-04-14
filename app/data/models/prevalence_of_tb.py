from django.db import models

class PrevalenceOfTb(models.Model):
	geo_level = models.TextField()
	geo_code = models.TextField()
	geo_version = models.FloatField()
	parent_level = models.TextField()
	parent_code = models.TextField()
	value = models.FloatField()
	name = models.TextField()

    class Meta:
      unique_together = ("geo_level", "geo_code", "geo_version", "parent_level", "parent_code", "value", "name")

    def __str__(self):
        return self.title
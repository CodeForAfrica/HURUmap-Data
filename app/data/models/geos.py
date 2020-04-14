from django.db import models

class Geos(models.Model):
	geo_level = models.TextField()
	geo_code = models.TextField()
	parent_level = models.TextField()
	parent_code = models.TextField()
	version = models.FloatField()
	name = models.TextField()
	long_name = models.TextField()
	square_kms = models.FloatField()

    class Meta:
      unique_together = ("geo_level", "geo_code", "version")

    def __str__(self):
        return self.title
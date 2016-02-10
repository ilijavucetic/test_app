from __future__ import unicode_literals

from django.db import models
from mongoengine import *
from app_store.settings import DBNAME

connect(DBNAME)
# Create your models here.
'''
class Publication(models.Model):
    title = models.CharField(max_length=30)

    def __str__(self):              # __unicode__ on Python 2
        return self.title

    class Meta:
        ordering = ('title',)


class Article(models.Model):
    headline = models.CharField(max_length=100)
    publications = models.ManyToManyField(Publication)

    def __str__(self):              # __unicode__ on Python 2
        return self.headline

    class Meta:
        ordering = ('headline',)'''


class Developer(models.Model):
    name = models.CharField(max_length=45)
    address = models.CharField(max_length=45)
    email = models.CharField(max_length=45)
    store_url = models.CharField(max_length=155)
    website = models.CharField(max_length=155)


class Category(models.Model):
    title = models.CharField(max_length=45)


class Application(models.Model):
    title = models.CharField(max_length=255)
    developer = models.ForeignKey(Developer)
    categories = models.ManyToManyField(Category)


class App(Document):
    app_id = IntField(primary_key=True)
    app_store_id = StringField(max_length=155, required=True)
    title = StringField(max_length=120, required=False)
    category = ListField(StringField(max_length=15))
    count = StringField(max_length=20, required=False)
    date_published = StringField(max_length=20, required=False)
    description = StringField(max_length=20000, required=False)
    dev = StringField(max_length=45, required=False)
    dev_address = StringField(max_length=45, required=False)
    dev_email = StringField(max_length=45, required=False)
    dev_store_url = StringField(max_length=155, required=False)
    dev_website = StringField(max_length=100, required=False)
    downloads_number = StringField(max_length=45, required=False)
    file_size = StringField(max_length=20, required=False)
    os = StringField(max_length=20, required=False)
    price = StringField(max_length=20, required=False)
    rating = StringField(max_length=45, required=False)
    screenshot = ListField(StringField(max_length=155))
    software_version = StringField(max_length=20, required=False)
    other_softwares = ListField(StringField(max_length=155))







# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-02-07 16:31
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='category',
            name='apps',
        ),
        migrations.AddField(
            model_name='app',
            name='categories',
            field=models.ManyToManyField(to='app.Category'),
        ),
    ]

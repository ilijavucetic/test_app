# -*- coding: utf-8 -*-
# Generated by Django 1.9.1 on 2016-02-07 16:38
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_auto_20160207_1631'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='App',
            new_name='Application',
        ),
    ]

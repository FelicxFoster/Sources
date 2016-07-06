# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models
from django.utils.timezone import utc
import datetime


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='author',
            field=models.CharField(default=datetime.datetime(2016, 4, 17, 7, 11, 41, 301400, tzinfo=utc), max_length=10),
            preserve_default=False,
        ),
    ]

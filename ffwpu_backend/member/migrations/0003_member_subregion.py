# Generated by Django 5.1.6 on 2025-04-22 14:03

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('member', '0002_membermission'),
        ('region', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='member',
            name='subregion',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='region.subregion'),
        ),
    ]

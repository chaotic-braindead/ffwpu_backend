# Generated by Django 5.1.6 on 2025-04-22 09:43

import django.db.models.deletion
import member.models
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('region', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Member',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('given_name', models.CharField(max_length=255)),
                ('middle_name', models.CharField(blank=True, max_length=255, null=True)),
                ('family_name', models.CharField(max_length=255)),
                ('gender', models.TextField(choices=[('Male', 'Male'), ('Female', 'Female')])),
                ('birthday', models.DateField()),
                ('nation', models.CharField(max_length=255)),
                ('marital_status', models.TextField(choices=[('Single', 'Single'), ('Married', 'Married')])),
                ('name_of_spouse', models.CharField(blank=True, max_length=255, null=True)),
                ('phone', models.CharField(max_length=255)),
                ('email', models.CharField(max_length=255)),
                ('address', models.CharField(max_length=255)),
                ('image', models.ImageField(blank=True, null=True, upload_to=member.models.upload_member_photo)),
                ('generation', models.CharField(max_length=255)),
                ('blessing_status', models.CharField(max_length=255)),
                ('spiritual_birthday', models.DateField()),
                ('spiritual_parent', models.CharField(max_length=255)),
                ('membership_category', models.TextField(choices=[('Regular', 'Regular'), ('Associate', 'Associate'), ('Registered', 'Registered'), ('Inactive', 'Inactive')])),
                ('region', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='region.region')),
            ],
        ),
    ]

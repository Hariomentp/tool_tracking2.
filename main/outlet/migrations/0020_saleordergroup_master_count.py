# Generated by Django 5.0.2 on 2024-02-29 11:06

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('outlet', '0019_remove_saleorder_grn_number'),
    ]

    operations = [
        migrations.AddField(
            model_name='saleordergroup',
            name='master_count',
            field=models.BigIntegerField(default=0),
        ),
    ]

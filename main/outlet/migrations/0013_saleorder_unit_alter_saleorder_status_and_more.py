# Generated by Django 5.0 on 2024-02-09 13:14

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('outlet', '0012_saleorder_checked_by_saleorder_verified_and_more'),
        ('units', '0017_requisitionproduct_added_break_quantity_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saleorder',
            name='status',
            field=models.CharField(choices=[('pending', 'Pending'), ('complete', 'Complete'), ('out', 'Out'), ('queue_for_out', 'queue_for_out'), ('checked_at_gate', 'checked_at_gate'), ('recived', 'recived')], default='pending', max_length=20),
        ),
        migrations.AlterField(
            model_name='saleordergroup',
            name='status',
            field=models.CharField(choices=[('created', 'created'), ('dispatched', 'dispatched'), ('checked', 'checked'), ('recived', 'recived')], default='created', max_length=20),
        ),
    ]

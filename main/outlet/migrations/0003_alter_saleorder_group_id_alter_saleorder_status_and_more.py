# Generated by Django 5.0 on 2023-12-20 04:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('outlet', '0002_saleorder_group_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='saleorder',
            name='group_id',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='saleorder',
            name='status',
            field=models.CharField(choices=[('pending', 'Pending'), ('complete', 'Complete'), ('out', 'Out'), ('queue_for_out', 'queue_for_out')], default='pending', max_length=20),
        ),
        migrations.CreateModel(
            name='SaleOrderGroup',
            fields=[
                ('group_id', models.AutoField(primary_key=True, serialize=False)),
                ('sale_orders', models.ManyToManyField(related_name='sale_order_groups', to='outlet.saleorder')),
            ],
        ),
    ]

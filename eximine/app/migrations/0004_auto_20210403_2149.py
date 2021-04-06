# Generated by Django 3.1.7 on 2021-04-03 16:19

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0003_importexportdata_csv_file'),
    ]

    operations = [
        migrations.RenameField(
            model_name='importexportdata',
            old_name='PORT_OF_LODING',
            new_name='PORT_OF_LOADING',
        ),
        migrations.AlterField(
            model_name='importexportdata',
            name='CURRENCY',
            field=models.TextField(blank=True, choices=[('USD', 'USD'), ('RS', 'RS'), ('INR ', 'INR ')], null=True),
        ),
    ]
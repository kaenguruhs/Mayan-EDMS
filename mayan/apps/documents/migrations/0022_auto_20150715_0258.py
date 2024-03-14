from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('documents', '0021_auto_20150714_2238'),
    ]

    operations = [
        migrations.AlterField(
            model_name='document',
            name='description',
            field=models.TextField(
                default='', verbose_name='Description', blank=True
            ),
            preserve_default=True,
        ),
    ]

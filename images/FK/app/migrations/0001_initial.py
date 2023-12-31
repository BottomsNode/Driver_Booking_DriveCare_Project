# Generated by Django 4.1.4 on 2023-02-10 07:31

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Career',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('career', models.CharField(max_length=250)),
            ],
        ),
        migrations.CreateModel(
            name='Candidate',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('email', models.CharField(max_length=100)),
                ('phone', models.CharField(max_length=100)),
                ('gender', models.CharField(choices=[('F', 'F'), ('M', 'M')], max_length=2, null=True)),
                ('career', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.career')),
            ],
        ),
    ]

from tortoise.models import Model
from tortoise import fields


class Task(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=200)


class Camera(Model):
    id = fields.IntField(pk=True)
    name = fields.CharField(max_length=200)

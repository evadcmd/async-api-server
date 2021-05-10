TORTOISE_ORM = {
    "connections": {"default": "postgres://root:root@db:5432/asyncapi_db"},
    "apps": {
        "asyncapi": {
            "models": ["app.models", "aerich.models"],
            "default_connection": "default",
        }
    },
}

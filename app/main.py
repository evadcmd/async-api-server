from fastapi import FastAPI
from tortoise.contrib.fastapi import register_tortoise

app = FastAPI()


@app.get("/")
async def index():
    return {"msg": "TATA"}


register_tortoise(
    app,
    db_url="postgres://root:root@db:5432/asyncapi_db",
    modules={"models": ["app.models"]},
    generate_schemas=True,
    add_exception_handlers=True,
)

from fastapi import FastAPI
from pydantic import BaseModel
from fastapi.staticfiles import StaticFiles


class Item(BaseModel):
    name: str
    description: str | None = None
    price: float


app = FastAPI()

app.mount("/static", StaticFiles(directory="app/static"), name="static")

items = []


@app.post("/add")
async def add_item(item: Item):
    items.append(item)
    return item


@app.post("/find_all")
async def find_all():
    return {"items": items}

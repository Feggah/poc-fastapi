from asyncio import sleep
from fastapi import FastAPI
from random import randint

app = FastAPI()

@app.get("/number")
async def generate_random_number():
    number = await random_number()
    return {
        "number": number
    }

async def random_number():
    # Doing some asynchronous stuff to generate the number
    await sleep(10)
    return randint(1, 100)

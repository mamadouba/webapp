import uvicorn
from fastapi import FastAPI 

app = FastAPI()

@app.get("/")
async def root():
    return {"message": "Hello World"}

def start():
    """Launched with `poetry run start`""" 
    uvicorn.run("webapp.main:app", host="0.0.0.0", port=8000)
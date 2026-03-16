from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "My Pipeline is Live!", "status": "Success"}

@app.get("/status")
def get_status():
    return {
        "database": "connected",
        "uptime": "99.9%",
        "server": "FastAPI inside Docker"
    }
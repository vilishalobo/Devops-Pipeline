# 1. Use an official Python image as a starting point
FROM python:3.11-slim

# 2. Set the directory inside the container where we will work
WORKDIR /app

# 3. Install the web server library
RUN pip install fastapi uvicorn

# 4. Copy our app.py file from our computer into the container
COPY app.py .

# 5. Tell the container to run the app when it starts
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
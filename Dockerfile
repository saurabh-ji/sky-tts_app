# Use official Python base image
FROM python:3.10-slim

# Set the working directory inside the container
WORKDIR /app

# Copy dependency list
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY . .

# Command to run the app
CMD ["python", "app.py"]

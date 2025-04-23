# Created by Google Gemini 2025-04-23
# EXPOSE and CMD lines edited by ChatGPT 2025-04-23
# Should help to deploy the app through Google Cloud

# Use an official Python runtime as a parent image
FROM python:3.11-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application source code
COPY . .

# Expose the port the app runs on (if applicable)
EXPOSE 8080

# Define the command to run your application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]


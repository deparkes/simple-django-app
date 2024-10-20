# Use an official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the files into the container
COPY . /app/

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Run migrations to update/create database
RUN python cool_counters/manage.py migrate

# Run the Django application (assuming manage.py is present)
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"]

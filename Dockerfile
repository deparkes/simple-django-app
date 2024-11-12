# Base Image
FROM python:3.7

# Set the working directory inside the container
WORKDIR /app

# Copy all files from the current directory on the host to the /app directory inside the container
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt
# The --no-cache-dir flag is useful to avoid caching the downloaded packages in the image, 
# which helps reduce the image size.

# Ensure database migrations are applied (optional, but common for Django apps)
RUN python cool_counters/manage.py migrate
# This assumes you have Django or a similar app. Ensure that the "cool_counters" folder exists
# in the container at this point and that it's accessible.

# Expose port 8000 (this is optional but good practice for Docker)
EXPOSE 8000

# Command to run the application
CMD ["python", "cool_counters/manage.py", "runserver", "0.0.0.0:8000"]
# This will start the Django development server. Make sure this is appropriate for production. 

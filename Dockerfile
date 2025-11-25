# Base Image

FROM python:3.7

# Working Directory 

WORKDIR /app

# Copy Code

COPY . .

# Install Dependencies

RUN pip install -r requirements.txt

# Migrate

RUN python cool_counters/manage.py migrate

# Run & Serve Application

CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]

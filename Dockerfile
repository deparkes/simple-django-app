# Base Image
FROM python:3.7

# Working directory
WORKDIR /app

# Code
COPY . .

# Install Libraries
RUN pip install -r  requirements.txt

# mirgration
RUN python cool_counters/manage.py migrate

# run app
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]



#Base Image
FROM python:3.7

#Working Directory
WORKDIR /app

#Copy Code
COPY . /app

#Install Libraries
RUN pip install -r requirements.txt

#Migrate Database
RUN python cool_counters/manage.py migrate

#Run the Server
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]


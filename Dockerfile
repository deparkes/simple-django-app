#BASE IMAGE

FROM python:3.7

#WORKING DIRECTORY 

WORKDIR /app

#CODE COPY 

COPY  . /app

#INSTALL LIBRARIES

RUN pip install -r resources.txt 

#MIGRATION

RUN python cool_counters/manage.py migrate

#RUN APP

CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]

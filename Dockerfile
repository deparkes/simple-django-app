#base image

From python:3.7

#working directory

WORKDIR /app

#code copy

COPY . .

#install libraries

RUN pip install -r requirements.txt

#migrate

RUN python cool_counters/manage.py migrate

#cmd

CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]



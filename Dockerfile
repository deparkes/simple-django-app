#Djamgo app to keep one requirements.txt for adding packages to install if any
FROM python:3.7
WORKDIR app
COPY  . /app
RUN pip install -r r.txt
RUN python cool_counters/manage.py migrate
CMD ["python","cool_counters/manage.py","runserver","0.0.0.0:8000"]

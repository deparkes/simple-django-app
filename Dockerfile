# set the Base Image from which your image will be built on
FROM python:3.8 
# create a directory called flask-circleci in root. 
# This directory will contain the code which currently resides in
RUN mkdir /flask-circleci

# make /flask-circleci the working directory
WORKDIR /flask-circleci

# copy your requirements file to the directory you just created
COPY requirements.txt /flask-circleci 

RUN pip install -r requirements.txt

# copy the current directory in you local machine to /flask-circleci in your image
ADD . /flask-circleci

EXPOSE 5000

CMD python main.py

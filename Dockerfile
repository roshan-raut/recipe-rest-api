FROM python:3.7-alpine
MAINTAINER Roshan Raut

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN chown -R 100:101 /app/manage.py

RUN adduser -D user
USER user

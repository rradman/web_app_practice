FROM python:3.7-alpine
MAINTAINER Robi

ENV PYHTONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

# Security 101
RUN adduser -D admin
USER admin
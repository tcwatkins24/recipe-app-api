FROM python:3.7-alpine

env PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
run pip install -r /requirements.txt

run mkdir /app
workdir /app
copy ./app /app

run adduser -D user
user user
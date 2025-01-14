FROM python:3.11.0-alpine

LABEL authors="0gl04q"

WORKDIR /var/www/VibeTorg

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./
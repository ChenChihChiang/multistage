FROM python:3-alpine AS base

WORKDIR /app
RUN pip install pipenv==2018.10.13

COPY Pipfile /app/
COPY Pipfile.lock /app/

RUN pipenv install --system --deploy

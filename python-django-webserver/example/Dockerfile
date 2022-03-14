FROM python:3.8-alpine
WORKDIR app
COPY HelloWorld .
RUN apk update
RUN apk add gcc musl-dev
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD gunicorn --bind :8005 --workers 1 HelloWorld.wsgi:application

# Dockerfile
# DO NOT MODIFY THIS FILE
FROM tiangolo/uwsgi-nginx-flask:python3.8

# These will be replaced in the automatic deployment process
ENV LISTEN_PORT 9000
EXPOSE 9000

COPY ./app /app

RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

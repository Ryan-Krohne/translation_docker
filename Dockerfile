# Dockerfile I'm using for deploying a LibreTranslate server

FROM python:3.11-slim


RUN apt-get update && apt-get install -y git build-essential


RUN git clone https://github.com/LibreTranslate/LibreTranslate /app/LibreTranslate


WORKDIR /app/LibreTranslate


RUN chmod +x run.sh


EXPOSE 5000


CMD ["sh", "-c", "./run.sh --port $PORT"]

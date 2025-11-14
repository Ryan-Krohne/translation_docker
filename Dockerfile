# Dockerfile I'm using for deploying a LibreTranslate server

FROM libretranslate/libretranslate:latest

ENV PORT=5000
EXPOSE 5000

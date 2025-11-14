# Dockerfile I'm using for deploying a LibreTranslate server

FROM libretranslate/libretranslate:latest

ENV PORT=${PORT:-5000}

EXPOSE $PORT

CMD ["sh", "-c", "./run.sh --port $PORT"]

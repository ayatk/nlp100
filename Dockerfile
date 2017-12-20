FROM python:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN apk add --update --no-cache build-base \
    && apk add --no-cache --virtual .build-deps libpng-dev freetype-dev gcc \
    && pip install --no-cache-dir -r requirements.txt \
    && apk del --purge .build-deps

CMD [ "/usr/local/bin/jupyter-lab", "--ip=0.0.0.0", "--allow-root"]

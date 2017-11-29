FROM python:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apk add --no-cache --virtual .build-deps \
    libpng-dev build-base freetype-dev gcc

COPY requirements.txt /usr/src/app/
RUN pip install --no-cache-dir -r requirements.txt

CMD [ "/usr/local/bin/jupyter-lab", "--ip=0.0.0.0", "--allow-root"]

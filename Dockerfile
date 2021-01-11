FROM python:3.9-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY pyproject.toml poetry.lock ./

RUN apk add --update --no-cache build-base graphviz libressl-dev libpng-dev libjpeg-turbo-dev libffi-dev freetype-dev zeromq-dev linux-headers
RUN pip install --no-cache-dir poetry && \
    poetry install

CMD [ "poetry", "run", "jupyter-lab", "--ip=0.0.0.0", "--allow-root"]

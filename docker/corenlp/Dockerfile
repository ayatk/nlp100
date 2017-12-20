FROM java:jre-alpine

ENV CORENLP_ARCHIVE_VERSION=2017-06-09

RUN apk add --update --no-cache --virtual .build-deps unzip wget \
    && wget -q http://nlp.stanford.edu/software/stanford-corenlp-full-${CORENLP_ARCHIVE_VERSION}.zip \
    && unzip stanford-corenlp-full-${CORENLP_ARCHIVE_VERSION}.zip \
    && rm stanford-corenlp-full-${CORENLP_ARCHIVE_VERSION}.zip \
    && apk del --purge .build-deps

WORKDIR stanford-corenlp-full-${CORENLP_ARCHIVE_VERSION}

RUN export CLASSPATH="`find . -name '*.jar'`"

EXPOSE 9000

CMD ["java", "-mx4g", "-cp", "*", "edu.stanford.nlp.pipeline.StanfordCoreNLPServer", "9000"]

FROM java:jre-alpine

ENV CORENLP_VERSION=4.2.0

RUN apk add --update --no-cache --virtual .build-deps unzip wget \
    && wget -q http://nlp.stanford.edu/software/stanford-corenlp-${CORENLP_VERSION}.zip \
    && unzip stanford-corenlp-${CORENLP_VERSION}.zip \
    && rm stanford-corenlp-${CORENLP_VERSION}.zip \
    && wget -q http://nlp.stanford.edu/software/stanford-corenlp-${CORENLP_VERSION}-models-english.jar \
    && mv stanford-corenlp-${CORENLP_VERSION}-models-english.jar stanford-corenlp-${CORENLP_VERSION} \
    && apk del --purge .build-deps

WORKDIR stanford-corenlp-${CORENLP_VERSION}

RUN export CLASSPATH="`find . -name '*.jar'`"

EXPOSE 9000

CMD ["java", "-mx4g", "-cp", "*", "edu.stanford.nlp.pipeline.StanfordCoreNLPServer", "9000"]

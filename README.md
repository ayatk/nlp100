# nlp100

Practice of [nlp100(jp: 言語処理100本ノック 2015)](http://www.cl.ecei.tohoku.ac.jp/nlp100/).

## Required
- Docker
- Docker compose

## Containers
- jupyter
    - User endpoint
- corenlp
    - Stanford CoreNLP server. 
- mecab
    - Mecab API server. Using [matsulib/mecab-service](https://github.com/matsulib/mecab-service/).
- mongo
    - Mongodb server. Will use it in Chapter 5.
- redis
    - Redis server. Will use it in Chapter 5.

## Usage
1. Clone and move this repositry.

        git clone https://github.com/ayatk/nlp100.git
        cd nlp100

1. Build docker image with Docker Compose.

        docker-compose build

1. Run the containers in the background process.

        docker-compose up -d

1. Access to http://localhost

## License
Released under the MIT License / Copyright (c) 2017 ayatk.

# syntax=docker/dockerfile:1
FROM ubuntu:22.04

LABEL Mario Barbareschi <mario.barbareschi@unina.it>

RUN apt-get -y update && \
    apt-get -y install git build-essential  && \
    git clone https://github.com/berkeley-abc/abc && \
    cd abc &&  make ABC_USE_NO_READLINE=1 && \
    cp abc /usr/bin && \
    cd .. && rm -rf ./abc 



FROM ubuntu:20.04

RUN \
    apt-get update -y && \
    apt-get install -y apt-utils gcc git python3 python3-dev python3-pip libssl-dev sudo

ENV SHELL /bin/bash
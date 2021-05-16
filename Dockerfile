FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -y && \
    apt-get install -y apt-utils gcc git python3 python3-dev python3-pip lsb-release libssl-dev sudo apt-transport-https wget unzip rake python sudo gnupg

RUN "deb http://archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

RUN wget -q -O packages-microsoft-prod.deb https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb \
    && sudo dpkg -i packages-microsoft-prod.deb

COPY ./files/systemctl3.py /usr/bin/systemctl

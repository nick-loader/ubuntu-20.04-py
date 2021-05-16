FROM ubuntu:20.04

RUN apt-get update -y && \
    apt-get install -y apt-utils gcc git python3 python3-dev python3-pip lsb-release libssl-dev sudo apt-transport-https wget unzip rake python sudo gnupg

# RUN "deb http://archive.ubuntu.com/ubuntu focal-updates main restricted universe multiverse" | sudo tee -a /etc/apt/sources.list

COPY ./files/systemctl3.py /usr/bin/systemctl
RUN sudo chmod +x /usr/bin/systemctl

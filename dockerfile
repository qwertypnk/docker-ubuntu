FROM ubuntu:20.04

ARG OS_USERNAME
ENV DEBIAN_FRONTEND noninteractive

RUN echo 'alias l="ls -ahl"' >> ~/.bashrc
RUN echo 'alias ll="ls -ahl"' >> ~/.bashrc
RUN echo 'alias ls="ls -ahl"' >> ~/.bashrc
RUN echo 'alias gohome="cd /usr/src"' >> ~/.bashrc
RUN echo 'alias gosota="cd /usr/src/sotaoi"' >> ~/.bashrc
RUN echo 'DEBIAN_FRONTEND=noninteractive' >> /etc/environment

RUN apt update
RUN apt install -y nano sudo gpg git
RUN echo ${OS_USERNAME}

WORKDIR /${OS_USERNAME}/sotaoi

EXPOSE 80
EXPOSE 443
EXPOSE 8080
EXPOSE 8079
EXPOSE 8081
EXPOSE 3001
EXPOSE 3306
EXPOSE 33060

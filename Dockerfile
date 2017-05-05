FROM ubuntu:14.04

MAINTAINER NamNV609 (namnv609@gmail.com)

RUN apt-get update
RUN apt-get install -y openssh-server vim
RUN ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -N ''

COPY sshd_config /etc/ssh/

ENTRYPOINT service ssh restart && bash

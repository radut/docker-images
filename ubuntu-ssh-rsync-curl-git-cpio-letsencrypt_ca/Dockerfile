FROM ubuntu:18.04
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install unzip zip rsync sshpass curl git cpio bzip2 jq vim net-tools iputils-ping telnet netcat pkg-config libfontconfig1-dev gettext sendemail libnet-ssleay-perl libio-socket-ssl-perl
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

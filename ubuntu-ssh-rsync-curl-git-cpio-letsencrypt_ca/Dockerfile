FROM ubuntu:latest
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install rsync curl git cpio bzip2 jq vim iputils-ping telnet netcat pkg-config libfontconfig1-dev
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

FROM ubuntu:latest
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install rsync curl git bzip2 jq
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates
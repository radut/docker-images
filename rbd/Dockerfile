FROM ubuntu:20.04
MAINTAINER Radu Toader radu.m.toader@gmail.com

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London

RUN apt-get update && apt-get -y upgrade && apt-get -y install ceph-common

ENTRYPOINT /usr/bin/rbd

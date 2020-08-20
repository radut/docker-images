FROM ubuntu:18.04
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install ceph-common 

ENTRYPOINT /usr/bin/rbd

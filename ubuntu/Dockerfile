FROM ubuntu:20.04
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install apt-utils unzip zip rsync sshpass curl git cpio bzip2 jq vim net-tools iputils-ping telnet netcat tree mtr dnsutils knot-dnsutils pkg-config libfontconfig1-dev gettext sendemail libnet-ssleay-perl libio-socket-ssl-perl python util-linux-locales ca-certificates
COPY letsencrypt /usr/local/share/ca-certificates/
RUN find /usr/share/ca-certificates -type f|grep -v moz | sed 's|.*ca-certificates\/||g' >> /etc/ca-certificates.conf
RUN update-ca-certificates

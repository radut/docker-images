FROM radut/ubuntu
MAINTAINER Radu Toader radu.m.toader@gmail.com


RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common ca-certificates curl && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y openjdk-8-jdk-headless

RUN echo "JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::" | sed "s:bin/java::")" >> /etc/profile
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::" | sed "s:bin/java::")
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# runtime dependency for Tomcat Native Libraries
RUN apt-get install -y libapr1 haveged rng-tools
RUN rngd -r /dev/urandom


COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/isrgrootx1.crt -alias isrgrootx1 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/isrg-root-x2.crt -alias isrg-root-x2 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-e1.crt -alias lets-encrypt-e1 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-e2.crt -alias lets-encrypt-e2 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-r3.crt -alias lets-encrypt-r3 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-r4.crt -alias lets-encrypt-r4 -keystore /etc/ssl/certs/java/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-r4-cross-signed.crt -alias lets-encrypt-r4-cross-signed -keystore /etc/ssl/certs/java/cacerts

RUN mkdir /build
WORKDIR /build

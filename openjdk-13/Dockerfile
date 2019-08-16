FROM radut/ubuntu
MAINTAINER Radu Toader radu.m.toader@gmail.com


RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common ca-certificates curl && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y ca-certificates-java && \
  apt-get install -y openjdk-13-jdk-headless

RUN echo "JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::" | sed "s:bin/java::")" >> /etc/profile
RUN export JAVA_HOME=$(readlink -f /usr/bin/java | sed "s:jre/bin/java::" | sed "s:bin/java::")

# runtime dependency for Tomcat Native Libraries
RUN apt-get install -y libapr1 haveged rng-tools
RUN rngd -r /dev/urandom


COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

#RUN printf 'changeit\nchangeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x1-cross-signed.crt -alias lets-encrypt-x1-cross-signed -keystore /etc/ssl/certs/java/cacerts
#RUN printf 'changeit\nchangeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x2-cross-signed.crt -alias lets-encrypt-x2-cross-signed -keystore /etc/ssl/certs/java/cacerts
#RUN printf 'changeit\nchangeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x3-cross-signed.crt -alias lets-encrypt-x3-cross-signed -keystore /etc/ssl/certs/java/cacerts
#RUN printf 'changeit\nchangeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x4-cross-signed.crt -alias lets-encrypt-x4-cross-signed -keystore /etc/ssl/certs/java/cacerts
#RUN printf 'changeit\nchangeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/IdenTrust-root.crt -alias IdenTrust-root -keystore /etc/ssl/certs/java/cacerts

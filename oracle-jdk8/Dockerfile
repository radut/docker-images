FROM radut/ssh-rsync-curl-git-cpio-letsencrypt_ca
MAINTAINER Radu Toader radu.m.toader@gmail.com

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common curl && \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/cache/oracle-jdk8-installer


# runtime dependency for Tomcat Native Libraries
RUN apt-get install -y libapr1 haveged rng-tools
RUN rngd -r /dev/urandom


COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x1-cross-signed.crt -alias lets-encrypt-x1-cross-signed -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x2-cross-signed.crt -alias lets-encrypt-x2-cross-signed -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x3-cross-signed.crt -alias lets-encrypt-x3-cross-signed -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/lets-encrypt-x4-cross-signed.crt -alias lets-encrypt-x4-cross-signed -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts
RUN printf 'changeit\nyes' | keytool -import -file  /usr/local/share/ca-certificates/IdenTrust-root.crt -alias IdenTrust-root -keystore /usr/lib/jvm/java-8-oracle/jre/lib/security/cacerts

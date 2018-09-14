FROM radut/ubuntu-oracle-java9-letsencrypt_ca
MAINTAINER Radu Toader radu.m.toader@gmail.com

ARG MAVEN_VERSION=3.5.4

ENV MAVEN_HOME /usr/share/maven

RUN \
  mkdir -p "${MAVEN_HOME}" && \
  curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
  | tar -xzC "${MAVEN_HOME}" --strip-components=1 && \
  ln -s "${MAVEN_HOME}"/bin/mvn /usr/bin/mvn

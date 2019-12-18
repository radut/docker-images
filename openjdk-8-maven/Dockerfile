FROM radut/openjdk-8
MAINTAINER Radu Toader radu.m.toader@gmail.com

ARG MAVEN_VERSION=3.6.3

ENV MAVEN_HOME /usr/share/maven

RUN \
  mkdir -p "${MAVEN_HOME}" && \
  curl -kfsSL https://archive.apache.org/dist/maven/maven-3/${MAVEN_VERSION}/binaries/apache-maven-${MAVEN_VERSION}-bin.tar.gz \
  | tar -xzC "${MAVEN_HOME}" --strip-components=1 && \
  ln -s "${MAVEN_HOME}"/bin/mvn /usr/bin/mvn

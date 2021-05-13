FROM radut/oracle-jdk8
MAINTAINER Radu Toader radu.m.toader@gmail.com

ARG MAVEN_VERSION=3.6.1
ENV MAVEN_HOME /usr/share/maven

ARG GRADLE_VERSION=7.0.1
ENV GRADLE_HOME /usr/share/gradle

RUN \
  mkdir -p "${MAVEN_HOME}" && \
  curl -fsSL http://apache.osuosl.org/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz \
  | tar -xzC "${MAVEN_HOME}" --strip-components=1 && \
  ln -s "${MAVEN_HOME}"/bin/mvn /usr/bin/mvn

RUN \
  mkdir -p "${GRADLE_HOME}" && \
  curl -kfsSL -o gradle-${GRADLE_VERSION}-bin.zip https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip  && \
  unzip gradle-${GRADLE_VERSION}-bin.zip "gradle-${GRADLE_VERSION}/*" -d "${GRADLE_HOME}" && \
  ln -s "${GRADLE_HOME}"/bin/gradle /usr/bin/gradle
#!/bin/bash

pushd ubuntu
bash push.sh
popd

pushd terraform-ansible
bash push.sh
popd

pushd openjdk-8
bash push.sh
popd

pushd openjdk-8-maven
bash push.sh
popd

pushd openjdk-8-maven-nodejs
bash push.sh
popd

pushd openjdk-11
bash push.sh
popd

pushd openjdk-11-maven
bash push.sh
popd

pushd openjdk-11-maven-nodejs
bash push.sh
popd

pushd openjdk-12
bash push.sh
popd

pushd openjdk-12-maven
bash push.sh
popd

pushd openjdk-12-maven-nodejs
bash push.sh
popd

pushd openjdk-15
bash push.sh
popd

pushd openjdk-15-maven
bash push.sh
popd

pushd openjdk-15-maven-nodejs
bash push.sh
popd

pushd varnish
bash build.sh
popd

#pushd oracle-jdk8
#bash push.sh
#popd
#
#pushd oracle-jdk8-maven
#bash push.sh
#popd
#
#pushd oracle-jdk8-maven-nodejs
#bash push.sh
#popd

#!/bin/bash

pushd ubuntu
bash build.sh
popd

pushd terraform-ansible
bash build.sh
popd

pushd openjdk-8
bash build.sh
popd

pushd openjdk-8-maven
bash build.sh
popd

pushd openjdk-8-maven-nodejs
bash build.sh
popd

pushd openjdk-11
bash build.sh
popd

pushd openjdk-11-maven
bash build.sh
popd

pushd openjdk-11-maven-nodejs
bash build.sh
popd

pushd openjdk-12
bash build.sh
popd

pushd openjdk-12-maven
bash build.sh
popd

pushd openjdk-12-maven-nodejs
bash build.sh
popd

pushd openjdk-15
bash build.sh
popd

pushd openjdk-15-maven
bash build.sh
popd

pushd openjdk-15-maven-nodejs
bash build.sh
popd

pushd varnish
bash build.sh
popd

#pushd oracle-jdk8
#bash build.sh
#popd
#
#pushd oracle-jdk8-maven
#bash build.sh
#popd
#
#pushd oracle-jdk8-maven-nodejs
#bash build.sh
#popd

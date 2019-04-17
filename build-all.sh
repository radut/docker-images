#!/bin/bash

pushd ubuntu
bash build.sh
popd

pushd terraform-ansible
bash build.sh
popd

pushd openjdk-java8-letsencrypt_ca
bash build.sh
popd

pushd openjdk-java8-letsencrypt_ca-maven
bash build.sh
popd

pushd openjdk-java8-letsencrypt_ca-maven-node-lts
bash build.sh
popd

pushd openjdk-java11-letsencrypt_ca
bash build.sh
popd

pushd openjdk-java11-letsencrypt_ca-maven
bash build.sh
popd

pushd openjdk-java11-letsencrypt_ca-maven-node-lts
bash build.sh
popd

pushd oracle-java8-letsencrypt_ca
bash build.sh
popd

pushd oracle-java8-letsencrypt_ca-maven
bash build.sh
popd

pushd oracle-java8-letsencrypt_ca-maven-node-lts
bash build.sh
popd

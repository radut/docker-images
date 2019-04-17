#!/bin/bash

pushd ssh-rsync-curl-git-cpio-letsencrypt_ca
bash push.sh
popd

pushd ssh-rsync-curl-git-cpio-letsencrypt_ca-terraform-ansible
bash push.sh
popd

pushd openjdk-java8-letsencrypt_ca
bash push.sh
popd

pushd openjdk-java8-letsencrypt_ca-maven
bash push.sh
popd

pushd openjdk-java8-letsencrypt_ca-maven-node-lts
bash push.sh
popd

pushd openjdk-java11-letsencrypt_ca
bash push.sh
popd

pushd openjdk-java11-letsencrypt_ca-maven
bash push.sh
popd

pushd openjdk-java11-letsencrypt_ca-maven-node-lts
bash push.sh
popd

pushd oracle-java8-letsencrypt_ca
bash push.sh
popd

pushd oracle-java8-letsencrypt_ca-maven
bash push.sh
popd

pushd oracle-java8-letsencrypt_ca-maven-node-lts
bash push.sh
popd

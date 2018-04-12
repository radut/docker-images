#!/bin/bash

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca
bash build.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-mtr
bash build.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-terraform-ansible
bash build.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca
bash build.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca-maven
bash build.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca-maven-node-lts
bash build.sh
popd


pushd ubuntu-oracle-java9-letsencrypt_ca
bash build.sh
popd


pushd ubuntu-oracle-java9-letsencrypt_ca-maven
bash build.sh
popd

pushd ubuntu-oracle-java9-letsencrypt_ca-maven-node-lts
bash build.sh
popd
#!/bin/bash

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca
bash push.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-mtr
bash push.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-terraform-ansible
bash push.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-terraform-ansible-2.6
bash push.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca
bash push.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca-maven
bash push.sh
popd

pushd ubuntu-oracle-java8-letsencrypt_ca-maven-node-lts
bash push.sh
popd


pushd ubuntu-oracle-java9-letsencrypt_ca
bash push.sh
popd


pushd ubuntu-oracle-java9-letsencrypt_ca-maven
bash push.sh
popd

pushd ubuntu-oracle-java9-letsencrypt_ca-maven-node-lts
bash push.sh
popd

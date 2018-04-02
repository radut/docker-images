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

echo ""
echo ""
echo "build images done"
echo ""
sleep 3
echo "push images now"
sleep 3
echo ""
echo ""

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca
bash push.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-mtr
bash push.sh
popd

pushd ubuntu-ssh-rsync-curl-git-cpio-letsencrypt_ca-terraform-ansible
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

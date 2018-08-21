FROM ubuntu:latest
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install rsync curl git cpio bzip2 jq vim net-tools iputils-ping telnet netcat pkg-config libfontconfig1-dev python-pip wget unzip && pip install jinja2 pbr hvac ansible-modules-hashivault netaddr yasha git+https://github.com/ansible/ansible.git@devel os_client_config==1.28.0 shade==1.26.0
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates
RUN wget -O terraform.zip  https://releases.hashicorp.com/terraform/0.11.5/terraform_0.11.5_linux_amd64.zip && unzip terraform.zip && mv terraform /usr/bin/ && chmod +x /usr/bin/terraform

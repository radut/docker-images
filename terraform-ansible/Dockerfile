FROM ubuntu:18.04
MAINTAINER Radu Toader radu.m.toader@gmail.com

#ARG ANSIBLE_VERSION=2.8.1.0
#ARG ANSIBLE_VERSION=2.7.8.0
#ARG ANSIBLE_VERSION=2.7.16
#ARG ANSIBLE_VERSION=2.9.6
#ARG ANSIBLE_VERSION=2.9.0
ARG ANSIBLE_VERSION=2.9.17
#ARG TERRAFORM_VERSION=0.11.11
#ARG TERRAFORM_VERSION=0.13.7
ARG TERRAFORM_VERSION=0.15.1

ARG KUBECTL_VERSION=v1.20.2
#ARG HELM_VERSION=v2.14.3
ARG HELM_VERSION=v3.5.0

#pip install --default-timeout=300
RUN export PIP_DEFAULT_TIMEOUT=300
ENV PIP_DEFAULT_TIMEOUT=300

ADD openstack.txt openstack.txt

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/London
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install software-properties-common apt-utils rsync sshpass curl git cpio bzip2 jq vim net-tools iputils-ping telnet netcat pkg-config libfontconfig1-dev wget unzip
### start python3
# RUN apt -y install python3 python3-pip
# RUN alias python=python3 && echo "alias python=python3" >>/etc/profile
# RUN ln -s /usr/bin/python3 /usr/bin/python
# RUN ln -s /usr/bin/pip3 /usr/bin/pip
### end python3
### start python2
RUN add-apt-repository universe
#RUN apt update && apt -y install python2
RUN apt update && apt -y install python
RUN curl https://bootstrap.pypa.io/pip/2.7/get-pip.py --output get-pip.py
RUN python2 get-pip.py
### end python2
RUN pip install jinja2 hvac ansible-modules-hashivault netaddr yasha ansible==${ANSIBLE_VERSION} os_client_config shade notario
RUN pip install openstack-requirements
RUN pip install python-openstackclient
RUN pip install -r openstack.txt
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates

ADD https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl /usr/local/bin/kubectl
RUN chmod +x /usr/local/bin/kubectl
RUN wget -O terraform.zip  https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && unzip terraform.zip && mv terraform /usr/bin/ && chmod +x /usr/bin/terraform
#RUN wget -O helm.tar.gz http://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz && tar -xvf helm.tar.gz && mv linux-amd64/helm /usr/bin && chmod +x /usr/bin/helm
RUN wget -O helm.tar.gz https://get.helm.sh/helm-${HELM_VERSION}-linux-amd64.tar.gz && tar -xvf helm.tar.gz && mv linux-amd64/helm /usr/bin && chmod +x /usr/bin/helm

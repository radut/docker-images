FROM ubuntu:latest
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get -y upgrade && apt-get -y install rsync curl jq
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates
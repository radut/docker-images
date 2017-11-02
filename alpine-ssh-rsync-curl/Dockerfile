FROM alpine:latest
MAINTAINER Radu Toader radu.m.toader@gmail.com

RUN apk update && apk upgrade && apk add --update ca-certificates bash openssh rsync curl jq
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates
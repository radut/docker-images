FROM alpine:latest
RUN apk update && apk upgrade && apk add --update ca-certificates bash openssh rsync curl jq
COPY letsencrypt /usr/local/share/ca-certificates/
RUN update-ca-certificates
#FROM ubuntu:18
FROM radut/ubuntu

MAINTAINER Radu Toader <radu.m.toader@gmail.com>

# Install Varnish dependencies
RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common ca-certificates curl && \
  add-apt-repository ppa:openjdk-r/ppa && \
  apt-get update && \
  apt-get install -y --no-install-recommends \
        automake \
        autotools-dev \
        ca-certificates \
        git \
        libtool \
        make \
        wget \
        pkg-config \
        python-docutils \
        libgetdns-dev \
        libgetdns1 \
        libvarnishapi-dev \
        varnish \
    && apt-get clean

# Configure Varnish Modules
RUN \
    wget https://download.varnish-software.com/varnish-modules/varnish-modules-0.15.0.tar.gz -O /tmp/varnish-modules-0.15.0.tar.gz \
    && cd /tmp/ \
    && tar -xf varnish-modules-0.15.0.tar.gz \
    && cd /tmp/varnish-modules-0.15.0 \
    && ./configure \
    && make \
    && make install \
    && rm -rf /tmp/varnish-modules-0.15.0 /tmp/varnish-modules-0.15.0.tar.gz

RUN \
    git clone https://github.com/nigoroll/libvmod-dynamic.git /tmp/libvmod-dynamic \
    && cd /tmp/libvmod-dynamic \
    && git checkout 6.0 \
    && ./configure \
    && make \
    && make install \
    && rm -rf /tmp/libvmod-dynamic


# Install custom entrypoint
COPY ./entrypoint.sh /usr/local/bin/docker-custom-entrypoint
RUN chmod 777 /usr/local/bin/docker-custom-entrypoint
ENTRYPOINT ["docker-custom-entrypoint"]
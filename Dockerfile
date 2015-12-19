FROM debian:latest
MAINTAINER Willian Paixao <willian@ufpa.br>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  texlive-xetex lmodern texlive-generic-extra texlive-generic-recommended \
  texlive-fonts-extra texlive-fonts-recommended && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]


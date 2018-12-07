FROM debian:8

LABEL version="1.1.1"

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  # git \
  # ca-certificates \
  # inotify-tools \
  # lmodern \
  make \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-lang-english \
  texlive-lang-cyrillic \
  texlive-xetex
  # && \
  # apt-get autoclean && apt-get --purge --yes autoremove && \
  # rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

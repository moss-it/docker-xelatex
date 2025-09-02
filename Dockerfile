#: title  : moss/xelatex
#: author : "Willian Paixao" <willian@ufpa.br>
#: version: "1.3.2"
FROM debian:13@sha256:6d87375016340817ac2391e670971725a9981cfc24e221c47734681ed0f6c0f5

LABEL org.opencontainers.image.authors="Willian Paixao <willian@ufpa.br>"
LABEL org.opencontainers.image.licenses="GPL-3.0"
LABEL org.opencontainers.image.source="https://github.com/moss-it/docker-xelatex"
LABEL org.opencontainers.image.title="moss/xelatex"
LABEL org.opencontainers.image.version="1.3.2"
LABEL org.opencontainers.image.description="Docker image for compiling XeLaTeX documents"

ENV DEBIAN_FRONTEND="noninteractive"

# Install all TeX and LaTeX dependencies
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  ca-certificates \
  git \
  html2text \
  inotify-tools \
  lmodern \
  make \
  texlive-extra-utils \
  texlive-fonts-recommended \
  texlive-lang-english \
  texlive-lang-portuguese \
  texlive-plain-generic \
  texlive-xetex && \
  apt-get autoclean && apt-get --purge --yes autoremove && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Export the output data
WORKDIR /data
VOLUME ["/data"]

#: title  : moss/xelatex
#: author : "Willian Paixao" <willian@ufpa.br>
#: version: "1.2.0"
FROM debian:11

LABEL org.opencontainers.image.authors="Willian Paixao <willian@ufpa.br>"
LABEL org.opencontainers.image.title="moss/xelatex"
LABEL org.opencontainers.image.version="1.2.0"

ENV DEBIAN_FRONTEND noninteractive

# Install all TeX and LaTeX dependences
RUN apt-get update && \
  apt-get install --yes --no-install-recommends \
  ca-certificates \
  git \
  inotify-tools \
  lmodern \
  make \
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

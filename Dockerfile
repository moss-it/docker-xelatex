FROM alpine:3.8

LABEL version="1.1.1"

# Install all TeX and LaTeX dependences
RUN apk add --no-cache \
  make \
  texlive-full

# Windows fonts
RUN apk add --no-cache \
  msttcorefonts-installer \
  && update-ms-fonts \
  && fc-cache -f

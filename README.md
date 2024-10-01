Docker Xelatex
==============

[![Docker Stars](https://img.shields.io/docker/stars/moss/xelatex.svg?style=flat-square)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/moss/xelatex.svg?style=flat-square)]()


* [Supported tags and respective `Dockerfile` links](#supported-tags-and-respective-dockerfile-links)
* [Base Docker Image](#base-docker-image)
* [Introduction](#introduction)
* [Quickstart](#quickstart)
* [Makefile Example](#makefile-example)
* [Useful links](#useful-links)

## Supported tags and respective `Dockerfile` links

* `latest`, `v1.1.0` [(Dockerfile)](https://github.com/moss-it/docker-xelatex/blob/master/Dockerfile)

* `v1.0.0` [(Dockerfile)](https://github.com/moss-it/docker-xelatex/blob/v1.0.0/Dockerfile)

## Base Docker Image

* [debian:12](https://registry.hub.docker.com/_/debian/)

## Introduction 

Docker container used for compile XeLaTex documents and deploy a generated PDF
file.

You can use to do instantaneous compile for each save with `inotify-tools`.

## Quickstart

* Simple make:

```
docker run --rm -v $(shell pwd):/data moss/xelatex make
```

* Auto compile for each save:

```
docker run --rm -v $(shell pwd):/data moss/xelatex make view
```

## Makefile Example
```
######################
#      Makefile      #
######################

filename=your_file_without_extension

pdf: 
	xelatex ${filename}
	xelatex ${filename}

text: html
	html2text -width 100 -style pretty ${filename}/${filename}.html | sed -n '/./,$$p' | head -n-2 >${filename}.txt

html:
	@#latex2html -split +0 -info "" -no_navigation ${filename}
	htlatex ${filename}

view:
	while inotifywait --event modify,move_self,close_write ${filename}.tex; \
		do xelatex -halt-on-error ${filename} &&   xelatex -halt-on-error \
		${filename}; done

clean:
	rm -f ${filename}.{ps,pdf,log,aux,out,dvi,bbl,blg,snm,toc,nav}
```

## Useful links

[Github remote](https://github.com/moss-it/docker-xelatex)

[Docker Hub repo](https://hub.docker.com/r/moss/xelatex/)


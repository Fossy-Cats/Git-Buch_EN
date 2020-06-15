#!/bin/bash

asciidoctor \
	--failure-level WARN \
	--timings \
	--verbose \
	--safe-mode unsafe \
	-a imagesdir=images \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a sectanchors \
	-a toc=left \
	-a toclevels=5 \
	-a reproducible \
	-o  Git-Buch_EN.html \
		gitbuch.asciidoc

# EOF #

#!/bin/bash

asciidoctor \
	--failure-level WARN \
	--timings \
	--verbose \
	--safe-mode unsafe \
	-a data-uri \
	-a experimental \
	-a icons=font \
	-a imagesdir=images \
	-a linkattrs \
	-a reproducible \
	-a sectanchors \
	-a toc=left \
	-a toclevels=5 \
	-o  Git-Buch_EN.html \
		gitbuch.asciidoc

# EOF #

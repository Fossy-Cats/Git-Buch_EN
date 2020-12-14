#!/bin/bash

asciidoctor \
	--failure-level WARN \
	--timings \
	--verbose \
	--safe-mode unsafe \
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

# NOTE: I've temporarily disabled the data-URI option to allow quick previews of
#       image changes without having to rebuild the whole doc:

#	-a data-uri \

#       Remember to restore it once image-editing is over, to ensure a fully
#       stand-alone output html document.

# EOF #

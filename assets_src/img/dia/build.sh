#!/bin/bash

# "assets_src/img/dia/build.sh"                            | v0.0.1 | 2020/12/14
# ==============================================================================
# Converts all DIA diagrams in this folder to same-named SVG images into the
# book's images folder:

destDir=../../../docs_src/images

# ------------------------------------------------------------------------------
# By Tristano Ajmone, released into the public domain via the Unlicense.
# ------------------------------------------------------------------------------
# This script requires installation of the following applications:
#
#     Dia Diagram Editor:
#     http://dia-installer.de
# ==============================================================================

echo -e "======================================"
echo -e "Building SVG Diagrams from Dia Sources"
echo -e "======================================"

for f in *.dia ; do
	dia -n -t svg -O $destDir $f
done

echo -e "/// Finished ///"

# EOF #

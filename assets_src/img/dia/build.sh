#!/bin/bash

# "assets_src/img/dia/build.sh"                            | v0.0.3 | 2021/03/01
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
echo -e "Checking for Dia Diagram Editor Binary"
echo -e "======================================"


DiaBin=dia

if [[ $(uname -s) == MINGW* ]];then
	# OS is Windows!
	FILE="./Dia/bin/dia.exe"
	if [[ -f $FILE ]];then
		DiaBin=$FILE
		echo "Standalone version of Dia for Windows found in \"./Dia/\" subfolder:"
		echo "  $DiaBin"
	fi
fi

if ! command -v $DiaBin -v &> /dev/null
then
	echo "Dia could not be found on this machine!"
	exit 1
fi

$DiaBin -v

echo -e "======================================"
echo -e "Building SVG Diagrams from Dia Sources"
echo -e "======================================"

for f in *.dia ; do
	dia -n -t cairo-svg -O $destDir $f
done

echo -e "/// Finished ///"

# EOF #

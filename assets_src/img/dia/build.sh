#!/bin/bash

# "assets_src/img/dia/build.sh"                            | v0.0.4 | 2021/04/03
# ==============================================================================
# Converts all DIA diagrams in this folder to same-named SVG images into the
# book's images folder:

destDir=../../../docs_src/images

# ------------------------------------------------------------------------------
# By Tristano Ajmone, released into the public domain via the Unlicense.
# ------------------------------------------------------------------------------
# This script requires installation of the following applications:
#
#    Dia Diagram Editor:
#     	http://dia-installer.de
#
#	 SVGO (Node.js) via NPM:
#     	https://www.npmjs.com/package/svgo
# ==============================================================================

if ! command -v svgo -v &> /dev/null
then
	echo -e "\033[1;31mSVGO could not be found on this machine!\033[0m"
	exit 1
fi

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mChecking for Dia Diagram Editor Binary"
echo -e "\033[1;33m======================================\033[1;37m"

DiaBin=dia

if [[ $(uname -s) == MINGW* ]];then
	# OS is Windows!
	FILE="./Dia/bin/dia.exe"
	if [[ -f $FILE ]];then
		DiaBin=$FILE
		echo "\033[0mStandalone version of Dia for Windows found in \"./Dia/\" subfolder:"
		echo "  $DiaBin"
	fi
fi

if ! command -v $DiaBin -v &> /dev/null
then
	echo -e "\033[1;31mDia could not be found on this machine!\033[0m"
	exit 1
fi

$DiaBin -v

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mBuilding SVG Diagrams from Dia Sources"
echo -e "\033[1;33m======================================\033[0;37m"

for f in *.dia ; do
	$DiaBin -n -t cairo-svg -O $destDir $f
done

echo -e "\033[1;33m======================================"
echo -e "\033[1;34mOptimizing Generated SVGs via SVGO"
echo -e "\033[1;33m======================================\033[0;37m"

svgo -f $destDir

echo -e "\033[1;32m\n/// Finished ///\033[0m"

# EOF #

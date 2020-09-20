#!/bin/bash

cd .git/hooks/ || { echo 'Uninstallation failed!'; exit 1; }

if [ -f pre-commit-create-html.sh ]
then
	rm pre-commit-create-html.sh
fi

if ! [ -f pre-commit ]
then
	exit
fi

grep -Fxv '.git/hooks/pre-commit-create-html.sh' pre-commit > temp
mv temp pre-commit

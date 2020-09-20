#!/bin/bash

cd .git/hooks/ || { echo 'Installation failed!'; exit 1; }

if [ -f pre-commit-create-html.sh ]
then
	rm pre-commit-create-html.sh
fi

cat >> pre-commit-create-html.sh << EOF
#!/bin/bash

cd docs_src || { echo 'HTML creation failed!'; exit 1; }

if git branch --show-current | grep -qv 'dev$'
then
	echo 'Not in a dev branch, HTML creation skipped.'
	exit
fi

./build.sh || { echo 'HTML creation failed!'; exit 1; }

git add Git-Buch_EN.html
echo 'HTML created.'
EOF
chmod +x pre-commit-create-html.sh

if [ -f pre-commit ] && grep -Fxq '.git/hooks/pre-commit-create-html.sh' pre-commit
then
	exit
fi

if ! [ -f pre-commit ]
then
cat >> pre-commit << EOF
#!/bin/bash

EOF
fi

cat >> pre-commit << EOF
.git/hooks/pre-commit-create-html.sh
EOF
chmod +x pre-commit

#!/bin/bash

htmlf="preview.html"
# rm $htmlf

cat <<HEREDOC > $htmlf
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width initial-scale=1.0">
<title>SVG Diagrams Preview</title>
<link rel="stylesheet" href="preview.css">
</head>
<body>
<div id="main">
HEREDOC

for dia in *.dia; do
	svg="${dia%.dia}.svg"
	svgpath="../../../docs_src/images/$svg"
	# echo "SVG: $svg"
	echo -e "<h1>$svg</h1>" >> $htmlf
	echo -e "<img src=\"$svgpath\">" >> $htmlf
done

cat <<HEREDOC >> $htmlf
</div>
</body>
</html>
HEREDOC

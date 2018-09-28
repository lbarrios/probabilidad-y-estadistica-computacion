#!/usr/bin/env bash

rm -f 999-todo_junto.md 999-todo_junto.pre.html

echo -e "[TOC]\n" > 999-todo_junto.md
cat 01-probabilidad.md <(echo) <(echo) \
02-variables-aleatorias-discretas.md <(echo) <(echo) \
03-variables-aleatorias-continuas.md <(echo) <(echo) \
04-distribucion-conjunta.md <(echo) <(echo) \
05-estadistica-descriptiva.md <(echo) <(echo) \
06-estimacion-puntual.md <(echo) <(echo) \
07-intervalos-de-confianza.md <(echo) <(echo) \
08-test-de-hipotesis.md <(echo) <(echo) \
>> 999-todo_junto.md

#sed -i 's/[ ]*```/```/g' 999-todo_junto.md

markdown_py -q -o "html5" -x markdown.extensions.toc -x markdown.extensions.tables -x markdown.extensions.fenced_code -x markdown.extensions.codehilite -x pymdownx.mark 999-todo_junto.md > 999-todo_junto.pre.html
#pygmentize -S default -f html > codehilite.css

echo "
<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="./css/codehilite.css">
	<link rel="stylesheet" type="text/css" href="./css/github-markdown.css">
	<link rel="stylesheet" type="text/css" href="./css/custom.css">
	<style>
		.markdown-body {
			box-sizing: border-box;
			min-width: 200px;
			max-width: 980px;
			margin: 0 auto;
			padding: 45px;
		}

		@media (max-width: 767px) {
			.markdown-body {
				padding: 15px;
			}
		}
	</style>
</head>

<body>
	<article class="markdown-body">" > resumen.html

cat 999-todo_junto.pre.html >> resumen.html

echo "</article>
</body></html>" >> resumen.html

rm -f 999-todo_junto.md 999-todo_junto.pre.html

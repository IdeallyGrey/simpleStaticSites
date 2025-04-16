#!/bin/bash
INPUT="content"
OUTPUT="html"
MDFLAVOR=
TEMPLATE="template"

rm -rf $OUTPUT/*

cp -rv $INPUT/* $OUTPUT/

for file in $(find $OUTPUT -type f -name "*.md" -print)
	do pandoc -f markdown -t html5 --data-dir="./" --template="$TEMPLATE" -s "$file" > "${file%.*}.html"
done

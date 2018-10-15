#!/usr/bin/env bash

cp pandoc.css docs/pandoc-built.css
for i in *.rst; do
    fileName=${i%.rst}
    pandoc -s -o docs/$fileName.html --css pandoc-built.css $fileName.rst
done
pandoc -o README.md 1-intro.rst
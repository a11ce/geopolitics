#!/usr/bin/env bash

rm docs/*

cp build-constants/index.html docs/index.html
cp build-constants/pandoc.css docs/pandoc.css

for i in *.rst; do
    fileName=${i%.rst}
    cat $fileName.rst footer.rst |  pandoc -s -o docs/$fileName.html --css pandoc.css -f rst
done
pandoc -o README.md 1-intro.rst
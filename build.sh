#!/usr/bin/env bash

for i in *.rst; do
    fileName=${i%.rst}
    pandoc -s -o docs/$fileName.html --css pandoc.css $fileName.rst
done
pandoc -o README.md 1-intro.rst
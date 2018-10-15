#!/usr/bin/env bash

for i in *.rst; do
    fileName=${i%.rst}
    pandoc -s -o docs/$fileName.html --css ../pandoc.css $fileName.rst
done
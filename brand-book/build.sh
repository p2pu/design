#!/bin/bash

for f in *.svg; do inkscape --export-pdf="$f.pdf" -z "$f"; done
pdftk *.svg.pdf cat output brandbook-latest.pdf
rm *.svg.pdf

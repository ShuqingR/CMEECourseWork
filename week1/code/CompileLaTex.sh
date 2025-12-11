#!/bin/bash

# report if no input file is provided
if [ $# -lt 1 ]; then
    echo "Plese provide valid input file. Example: bash CompileLaTex.sh <filename.tex>"
    exit 1
fi

pdflatex $1.tex
bibtex $1
pdflatex $1.tex
pdflatex $1.tex
evince $1.pdf &

## Cleanup
rm *.aux
rm *.log
rm *.bbl
rm *.blg
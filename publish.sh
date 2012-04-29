#!/bin/bash

pdflatex thesis > /dev/null
bibtex thesis
pdflatex thesis > /dev/null
pdflatex thesis > /dev/null
date "+%Y-%m-%d %H:%M:%S,`gs -q -dNODISPLAY -c '(thesis.pdf) (r) file runpdfbegin pdfpagecount = quit'`" | cat pages.csv - > pages-tmp.csv
mv pages-tmp.csv pages.csv
cat to-publish | xargs ./one-publish.sh
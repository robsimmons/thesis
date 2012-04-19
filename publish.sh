#!/bin/bash

pdflatex thesis > /dev/null
bibtex thesis
pdflatex thesis > /dev/null
pdflatex thesis > /dev/null
cat to-publish | xargs ./one-publish.sh
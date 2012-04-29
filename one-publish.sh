#!/bin/bash

pdflatex $1 > /dev/null
bibtex $1 > /dev/null
pdflatex $1 > /dev/null
pdflatex $1 > /dev/null
scp $1.pdf typesafety.net:/home/www/www/thesis

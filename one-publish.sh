#!/bin/bash

ALLSRC=introduction,chapter-foc,chapter-3-ordered,chapter-framework,chapter-correspondence,chapter-absmachine
NUM=$1
INPUT=$2
UPLOAD=$3
PAGENUM=`sed 's/{/ /g' < thesis.aux | sed 's/}/ /g' | awk "/$2/ { print \\$4 }"`



if [ $UPLOAD == "PUBLISH" ] 
then
  echo "Publishing Chapter $NUM (page $PAGENUM)"

  # STEP 1: BIBTEX
  sed -e "s/\\\\include/%/g" \
      -e "s/%{$INPUT}/\\\\input{$INPUT}/g" \
      < chapter-template.tex > chapter-$NUM.tex
  pdflatex chapter-$NUM > /dev/null
  bibtex chapter-$NUM > /dev/null

  # STEP 2: MAKE THE .aux FILE AWESOME
  cat < chapter-template.tex > chapter-$NUM.tex
  pdflatex chapter-$NUM > /dev/null
else 
  echo "Refreshing Chapter $NUM (page $PAGENUM)"
fi

sed -e "s/\\\\include/%/g" \
    -e "s/%{$INPUT}/\\\\input{$INPUT}/g" \
    -e "s/%CHAPTER/\\\\setcounter{chapter}{$((NUM-1))}/g" \
    -e "s/%PAGE/\\\\setcounter{page}{$PAGENUM}/g" \
    -e "s/%PAGE/\\\\setcounter{page}{$PAGENUM}/g" \
     < chapter-template.tex > chapter-$NUM.tex
pdflatex chapter-$NUM > /dev/null

if [ $UPLOAD == "PUBLISH" ]
then
  scp chapter-$NUM.pdf typesafety.net:/home/www/www/thesis
fi
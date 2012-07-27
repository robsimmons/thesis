#!/bin/bash
FORMAT="%Y-%m-%d %H:%M:%S"

# Make thesis.pdf
pdflatex thesis > /dev/null
bibtex thesis
pdflatex thesis > /dev/null
pdflatex thesis > /dev/null
scp thesis.pdf typesafety.net:/home/www/www/thesis/thesis.pdf

# Page count
scp typesafety.net:/home/www/www/thesis/pages.data pages-tmp.data > /dev/null
date "+$FORMAT `gs -q -dNODISPLAY -c '(thesis.pdf) (r) file runpdfbegin pdfpagecount = quit'`" | cat pages-tmp.data - > pages.data
rm pages-tmp.data
scp pages.data typesafety.net:/home/www/www/thesis > /dev/null

# Page count plot
sed "s/NOW/`date +\"$FORMAT\"`/g" < pages.gnuplot | gnuplot > /dev/null
scp pages.png typesafety.net:/home/www/www/thesis > /dev/null

# Publish completely drafted chapters
xargs -L1 ./one-publish.sh < to-publish




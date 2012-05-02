set terminal png
set output "pages.png"
set title "Pages in thesis.pdf over time"

set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set xrange ["2012-02-21 12:00:00":"NOW"]
set format x "%m/%d"
plot "pages.data" using 1:3


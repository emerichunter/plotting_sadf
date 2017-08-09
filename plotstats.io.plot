datafile = "stats.io.dat"
set datafile commentschar ""
set title "RAM Utilization"
set xdata time
set grid ytics
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal jpeg #size 800,500
set output 'sar.io.png'
set xlabel "Time"
set ylabel "IO transferts per second"
set ytics nomirror
set y2label "Blocks Utilization"
set y2tics nomirror
set ytics
# y2tics sets the increment between ticks, not their number
set y2tics autofreq

set xtics rotate
set key below
#set grid
set grid xtics ytics
# hostname;interval;timestamp;tps;rtps;wtps;bread/s;bwrtn/s
plot datafile using 3:5 axis x1y1  title "tps" with lines, datafile using 3:4  axis x1y1 title "rtps" with lines, datafile using 3:5 axis x1y1 title "wtps" with lines, datafile using 3:6  axis x1y2 title "bread/s" with lines,  datafile using 3:7 axis x1y2 title "bwrtn/s" with lines



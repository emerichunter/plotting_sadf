datafile = "stats.mem.dat"
set datafile commentschar ""
set title "RAM Utilization"
set xdata time
#set grid ytics
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal dumb 170 45 
set xlabel "Time"
set y2label "% Utilization"
set ylabel "kb Utilization"
set ytics nomirror
set y2tics
# y2tics sets the increment between ticks, not their number
#set y2tics autofreq

set xtics rotate
set key below
#set grid
set grid xtics ytics

# hostname;interval;timestamp;kbmemfree;kbmemused;%memused;kbbuffers;kbcached;kbcommit;%commit
plot datafile using 3:5  axis x1y1 title "%user" with lines, datafile using 3:4  axis x1y1 title "kbfree" with lines, datafile using 3:5 axis x1y1 title "kbused" with lines, datafile using 3:6  axis x1y2 title "%memused" with lines,  datafile using 3:7 axis x1y1 title "kbbuff" with lines,  datafile using 3:8 axis x1y1 title "kbcached" with lines, datafile using 3:9 axis x1y1 title "kbcommit" with lines,  datafile using 3:10 axis x1y2 title "%commit" with lines


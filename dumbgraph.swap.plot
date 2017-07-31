datafile = "stats.swap.dat"
set datafile commentschar ""
set title "RAM Utilization"
set xdata time
set grid ytics
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal  dumb 170 45
set xlabel "Time"
set ylabel "% Utilization"
set y2label "kb Utilization"
set ytics nomirror
set y2tics
# y2tics sets the increment between ticks, not their number
#set y2tics autofreq

set xtics rotate
set key below
#set grid
set grid xtics ytics

# hostname;interval;timestamp;kbswpfree;kbswpused;%swpused;kbswpcad;%swpcad
plot datafile using 3:5  axis x1y2 title "kbswpfree" with lines, datafile using 3:4  axis x1y2 title "kbswpused" with lines, datafile using 3:5 axis x1y1 title "%swpused" with lines, datafile using 3:6  axis x1y2 title "kbswpcad" with lines,  datafile using 3:7 axis x1y1 title "%swpcad" with lines 


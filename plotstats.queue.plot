datafile = "stats.q.dat"
set datafile commentschar ""
set title "Queue Utilization"
set xdata time
set grid xtics ytics
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal jpeg #size 800,500
set output 'sar.queue.png'
set xlabel "Time"
set ylabel "nb process"
set y2label "% Utilization"
set xtics rotate
set key below
#set grid
set ytics nomirror
set y2tics
set y2tics autofreq
# hostname;interval;timestamp;runq-sz;plist-sz;ldavg-1;ldavg-5;ldavg-15
plot datafile using 3:4 axis x1y1 title "runq-sz" with lines, datafile using 3:5 axis x1y1 title "plist-sz" with lines, datafile using 3:6 axis x1y2 title "ldavg-1m%" with lines, datafile using 3:7 axis x1y2 title "ldavg-5m%" with lines, datafile using 3:8 axis x1y2 title "ldavg-15m%" with lines 


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

set xtics rotate
set key below
#set grid
set grid xtics ytics
# hostname;interval;timestamp;tps;rtps;wtps;bread/s;bwrtn/s
plot datafile using 3:5   title "tps" with lines, datafile using 3:4   title "rtps" with lines, datafile using 3:5 title "wtps" with lines, datafile using 3:6  title "bread/s" with lines,  datafile using 3:7  title "bwrtn/s" with lines 


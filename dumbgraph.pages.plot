datafile = "stats.pages.dat"
set datafile commentschar ""
set title "Processor Utilization"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal dumb 170 45
set xlabel "Time"
set ylabel "Pages/sec"
set xtics rotate
set key below
set grid
#plot for [i=5:8:1]     
#	datafile using 3:(sum [col=i:8] column(col))     
#	title columnheader(i)     
#	with lines
# hostname;interval;timestamp;pgpgin/s;pgpgout/s;fault/s;majflt/s;pgfree/s;pgscank/s;pgscand/s;pgsteal/s;%vmeff
plot datafile using 3:5 title "pgpgin/s" with lines, datafile using 3:6 title "pgpgout/s" with lines, datafile using 3:7 title "fault/s" with lines, datafile using 3:8 title "majflt/s" with lines ,  datafile using 3:9 title "pgfree/s" with lines,  datafile using 3:10 title "pgscank/s" with lines,  datafile using 3:11 title "pgscand/s" with lines ,  datafile using 3:12 title "pgsteal/s" with lines,  datafile using 3:13 title "%vmeff" with lines


datafile = "stats.dat"
set datafile commentschar ""
set title "Processor Utilization"
set xdata time
set timefmt "%Y-%m-%d %H:%M:%S"
set datafile separator ";"
set terminal jpeg #size 800,500
set output 'sar.png'
set xlabel "Time"
set ylabel "% Utilization"
set xtics rotate
set key below
set grid
#plot for [i=5:8:1]     
#	datafile using 3:(sum [col=i:8] column(col))     
#	title columnheader(i)     
#	with lines
#%user;%nice;%system;%iowait;%steal;%idle
plot datafile using 3:5 title "%user" with lines, datafile using 3:6 title "%nice" with lines, datafile using 3:7 title "%system" with lines, datafile using 3:8 title "%iowait" with lines 


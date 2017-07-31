datafile="stats.cpu.dat" 
set title "Processor Utilization" 
set xdata time 
set timefmt "%Y-%m-%d %H:%M:%S" 
set datafile separator ";" 
set terminal dumb 170 45 
set xlabel "Time" 
set ylabel "% Utilization" 
set xtics rotate 
set key below 
set grid
plot datafile using 3:5 title "%user" with lines, datafile using 3:6 title "%nice" with lines, datafile using 3:7 title "%system" with lines, datafile using 3:8 title "%iowait" with lines


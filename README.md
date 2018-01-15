# plotting_sadf
plotting sadf info with gnuplot 

NOTE : the UNIX user `postgres` can consult any info from sar

===========================

Prerequisite : GNUplot and sysstat 

Instantaneous graphing (output to png and printing to screen in dumb directly) :
 * `./plotting_sadf` for cpu info
 * `./plotting_sadf -t q   -w 170 -l 45 -c` (see example)
 * `./graph.queue.sh -t cpu -d -1 -f png -o out.png`

~~~
./plotting_sadf -h
Usage:
plotting_sadf -h
plotting_sadf -t [cpu|io|pages|ram|q|swap] -d [-1|-2|...] -f [dumb|png] -w [170] -l [45] -o ['outputname']


   -h     help (this output)
   -t     type (cpu|io|pages|ram|q|swap)
   -d     day -n to get stats from the last nth day, leave empty for today
   -f     format dumb or png supported
   -w     width of screen
   -l     height of screen
   -o     output file name
~~~


 


Most notable scripts are :
 * `getting_sadf_CPUusage.sh` statistics from CPU (%user/%nice/%system/%iowait)
 * `getting_sadf_mem.sh` 	  statistics from RAM
 * `getting_sadf_queue.sh` 	statistics from run-q
 * `getting_sadf_swap.sh`   statistics from swap 
  
There are also less noteworthy scripts :
 * `getting_sadf_CPUpages.sh` 	 Pages from CPU statistics
 * `getting_sadf_IOtransfert.sh` Transfert to disk


**TODO** :
 * wrap it all up in full report
 * import and plot in PG (if relevant)
 
 ![Example of cpu graph in png](https://github.com/emerichunter/plotting_sadf/blob/master/sar.cpu.png)
 
 ![Example of cpu graph in dumb terminal](https://github.com/emerichunter/plotting_sadf/blob/master/sar_cpu_dumb.PNG)

 

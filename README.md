# plotting_sadf
plotting sadf info with gnuplot 

NOTE : the UNIX user `postgres` can consult any info from sar

===========================

Prerequisite : GNUplot and sysstat 

Instantaneous graphing (output to png and printing to screen in dumb directly) :
 * `./graph.cpu.sh`
 * `./graph.swap.sh`
 * `./graph.queue.sh`
 * `./graph.mem.sh`
 * `./graph.pages.sh`
 * `./graph.io.sh`

 
Statistics from sadf : sar from the last 24h

Use in postgres : 
`\cd to the directory of plotting_sadf`
`\! ./graph.cpu.sh` to get graph from dumb terminal


What it does

1. execute getting_sadf_CPUusage.sh puts the sar stats in CSV file format
`./getting_sadf_CPUusage.sh`


2. execute plotstats to plot in png
` gnuplot plotstats.cpu.plot`

3. take a look at the graph for the day in sar.cpu.png 



Most notable scripts are :
 * getting_sadf_CPUusage.sh statistics from CPU (%user/%nice/%system/%iowait)
 * getting_sadf_mem.sh 	  statistics from RAM
 * getting_sadf_queue.sh 	statistics from run-q
 * getting_sadf_swap.sh   statistics from swap 
  
There are also less noteworthy scripts :
 * getting_sadf_CPUpages.sh 	 Pages from CPU statistics
 * getting_sadf_IOtransfert.sh Transfert to disk


**TODO** :
 * wrap it all up in full report
 * import and plot in PG (if relevant)
 
 ![Example of cpu graph in png](https://github.com/emerichunter/plotting_sadf/blob/master/sar.cpu.png)
 
 ![Example of cpu graph in dumb terminal](https://github.com/emerichunter/plotting_sadf/blob/master/sar_cpu_dumb.PNG)

 

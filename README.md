# plotting_sadf
plotting sadf info with gnuplot 
NOTE : postgres can consult any info from sar

===========================


1. execute getting_sadf_CPUusage.sh
`./getting_sadf_CPUusage.sh`


2. execute plotstats
` gnuplot plotstats.cpu.plot`

3. take a look at the graph for the day in sar.png


Most notable scripts are :
 * getting_sadf_mem.sh 	  statistics from RAM
 * getting_sadf_queue.sh 	statistics from run-q
 * getting_sadf_swap.sh   statistics from swap 
  
There are also less noteworthy scripts :
 * getting_sadf_CPUpages.sh 	 Pages from CPU statistics
 * getting_sadf_IOtransfert.sh Transfert to disk

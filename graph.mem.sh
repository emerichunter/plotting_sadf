#!/bin/bash

./getting_sadf_mem.sh

gnuplot plotstats.mem.plot

gnuplot dumbgraph.mem.plot

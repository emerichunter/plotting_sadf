#!/bin/bash

./getting_sadf_CPUusage.sh

gnuplot plotstats.cpu.plot

gnuplot dumbgraph.cpu.plot

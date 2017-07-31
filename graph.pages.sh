#!/bin/bash

./getting_sadf_CPUusage.sh

gnuplot plotstats.pages.plot

gnuplot dumbgraph.pages.plot

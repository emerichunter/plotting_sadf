#!/bin/bash

./getting_sadf_swap.sh

gnuplot plotstats.swap.plot
gnuplot dumbgraph.swap.plot

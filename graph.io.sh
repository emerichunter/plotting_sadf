#!/bin/bash

./getting_sadf_IOtransfert.sh

gnuplot plotstats.io.plot
gnuplot dumbgraph.io.plot

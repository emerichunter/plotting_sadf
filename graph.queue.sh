#!/bin/bash

./getting_sadf_queue.sh

gnuplot plotstats.queue.plot
gnuplot dumbgraph.queue.plot

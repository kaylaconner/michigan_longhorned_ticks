#!/bin/bash

#this script converts the centrifuge classification into a kraken-style report that can be fed to Pavian for visualization

centrifuge-kreport -x <path_to_index> <non_host_classification.tsv> > non_host_kreport.tsv

#!/bin/bash

#taxonomic classification of reads against the all bacterial and viral index
#parameter --minlen 100 requires 100 consecutive matching bases between the query and the index to call a taxonomic classification
#parameter -k 1 limits taxonomic classification to one classification per sequencing read

centrifuge -x <abv_index_path> -U non_host.fastq --report-file non_host_report.tsv -S non_host_classification.tsv

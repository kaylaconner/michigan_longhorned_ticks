#!/bin/bash

#taxonomic classification of reads against the viral index
#parameter -k 1 limits taxonomic classification to one classification per sequencing read

centrifuge -x <vir_index_path> -U non_host.fastq --report-file non_host_report.tsv -S non_host_classification.tsv

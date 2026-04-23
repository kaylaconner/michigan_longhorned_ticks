#!/bin/bash  
  
#before processing, concatenate demultiplexed nanopore reads per barcode  
#note that raw data included in this repository was concatenated prior to upload
cat *fastq > out_concatenated.fastq

#map reads to the EquCab3.0 reference genome, then write unmapped (non-host) reads to a new fastq file using minimap2 and samtools
minimap2 -a ref.fa out_concatenated.fastq | samtools view -bS -f 4 | samtools fastq > non_host.fastq 

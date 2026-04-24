# Initial Detection of Longhorned Ticks (Acari: Ixodidae) in Michigan

**Background:** The invasive longhorned tick (_Haemaphysalis_ _longicornis_ Neumann) was first detected in the Mid-Atlantic region of the United States in 2017, prompting concern about the potential for population expansion and establishment. As of April 2025, the longhorned tick had expanded to 21 eastern and midwestern states. The longhorned tick is a significant cattle pest that can cause anemia and exsanguination and is a vector of the emerging cattle parasitethogen _Theileria_ _orientalis_ Ikeda. This report describes the first detection of the longhorned tick in Michigan during routine surveillance for ticks of public health concern.

**Methods:** All longhorned tick specimens were sent to Michigan State University Veterinary Diagnostic Laboratory for pathogen detection sequencing using Sequence-Independent, Single-Primer Amplification (SISPA) and direct Oxford Nanopore DNA sequencing using an Oxford Nanopore Technologies (ONT) MinION Mk1B instrument. Basecalling was performed using the super accurate model in Dorado v7.8.3 with a minimum quality threshold of 10. All passing sequencing reads were concatenated into one FASTQ file per barcode and mapped to the _Haemaphysalis_ _longicornis_ Haplotype H1 reference genome (RefSeq Accession: GCF_048455015.1) using Minimap2 v2.26. Non-host reads were filtered using SAMtools v1.19.2 and taxonomically classified using Centrifuge v1.0.4 against databases constructed from bacterial and viral reads in RefSeq. 

## Repository Structure

`scripts`: This directory contains all bash scripts used to process data for this project
`data`: This directory contains all the _processed_ data associated with this project
    _Note:_ Raw data is accessible through the NCBI Sequence Read Archive (SRA) BioProject PRJNA1457432
  - `abv`: All processed data from taxonomic classification against the all bacterial and viral index
  - `vir`: all processed data from taxonomic classification agianst the viral only index
`ref`: This directory contains the centrifuge inspect files (containing a list of all represented genomes) associated with the indexes used for taxonomic classification in this study

## Dependencies

**Preprocessing.** This step is accomplished using the `preprocessing.sh` script and requires the following software dependencies:
  - [Minimap2 v2.26](https://anaconda.org/bioconda/minimap2/files?channel=main&page=0&sort=ndownloads&sort_order=asc&type=conda&version=2.26)
  - [SAMtools v1.19.2](https://anaconda.org/bioconda/samtools/files?channel=main&page=0&type=conda&version=1.19.2)

**Taxonomic Classification.** All taxonomic classification steps require the following software dependency:
  - [Centrifuge v1.0.4](https://github.com/DaehwanKimLab/centrifuge/releases/tag/v1.0.4)

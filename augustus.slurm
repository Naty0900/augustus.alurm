#!/bin/bash
#SBATCH --job-name=blast_informe1
#SBATCH --output=infobllast.txt
#SBATCH --partition=nu
#SBATCH --ntasks=1
#SBATCH --time=70:00:00
#SBATCH --mail-user=npicadp@kabre.centa.ac.cr

module load blast+/2.11.0

makeblastdb -in B.bassiana.faa  -input_type fasta -dbtype prot -parse_seqids

blastp -query informe2.aa  -task blastp -db B.bassiana.faa  -out informe2_blast.txt -evalue 1e-5 -outfmt '6' -num_threads 48

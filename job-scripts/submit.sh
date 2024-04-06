#!/bin/bash
#SBATCH --mem=32G
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=15:0:0    
#SBATCH --mail-user=fernandes_machado.agathe@courrier.uqam.ca
#SBATCH --mail-type=ALL

module load gcc/9.3.0 r/4.1.2
export R_LIBS=~/.local/R/$EBVERSIONR/
R CMD BATCH --no-save --no-restore ../main/script.R

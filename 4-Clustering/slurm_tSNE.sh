#!/bin/sh
#SBATCH --job-name=tSNE-tumor-R       # Job name
#SBATCH --mail-type=BEING,END              # Mail events (NONE, BEGIN, END, FAIL, ALL)
#SBATCH --mail-user=acm95@ugr.es     # Where to send mail 
#SBATCH --nodes=1                    # Use one node
#SBATCH --ntasks=1                   # Run a single task
#SBATCH --cpus-per-task=20            # Number of CPU cores per task
#SBATCH --output=R-tSNE_dump_%j.out
#SBATCH --get-user-env 


# t-SNE
Rscript tsne_metabolic_genes.R melanoma 20 &&
Rscript tsne_metabolic_genes.R head_neck 20





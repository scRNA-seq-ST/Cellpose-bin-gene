#!/bin/bash
#SBATCH --job-name cellpose_mask
#SBATCH --partition mpi-short
#SBATCH --nodes 1
#SBATCH --tasks-per-node 20
#SBATCH --time 24:00:00
#SBATCH --mem 80G
#SBATCH --error  %x.err
#SBATCH --output %x.out
#SBATCH --mail-type END
#SBATCH --mail-user youyuanchen@um.edu.mo
        
source activate cps
python get_cellpose_outlines.py
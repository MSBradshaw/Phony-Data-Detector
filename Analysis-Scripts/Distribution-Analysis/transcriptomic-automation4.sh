#!/bin/bash
module load anaconda
pip install --user pandas==0.23.0
pip install --user mkl
for i in `seq 61 80`; do
    python3 Classification-first-and-second-general-use.py '../../Data/Distribution-Data-Set/train_transcriptomics_distribution'$i'.csv' '../../Data/Distribution-Data-Set/test_transcriptomics_distribution'$i'.csv' 'transcriptomics_results'$i'.csv'

done
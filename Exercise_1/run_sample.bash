#!/bin/bash

#SBATCH --job-name=my-python-test
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --partition=express

## load the anaconda package:
module load discovery
module load anaconda3/2021.05

## activate the environment:
source activate myenv

## run the python script which uses NumPy:
python sample_NumPy_script.py

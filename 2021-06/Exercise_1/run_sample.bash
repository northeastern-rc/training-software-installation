#!/bin/bash

##### Use outside training ########
#SBATCH --partition=express
##### Use during training #########
##SBATCH --partition=reservation
##SBATCH --reservation=bootcamp2021cpu
###################################
#SBATCH --job-name=my-python-test
#SBATCH --time=00:05:00
#SBATCH –-nodes=1
#SBATCH --ntasks=1

## Clean any previous modules or conda envs:
module purge
conda deactivate
## load the anaconda package:
module load discovery
module load anaconda3/2021.05

## activate the environment:
source activate myenv

## run the python script which uses NumPy:
python sample_NumPy_script.py

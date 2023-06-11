#!/bin/bash

#SBATCH --job-name=my-python-test
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=1
#SBATCH --output=%j.out
#SBATCH --error=%j.err

#####Use during training###############
#SBATCH --partition=reservation
#SBATCH --reservation=bootcamp_cpu_2023 
#######################################

#####Use after training##############
##SBATCH --partition=express


## load the anaconda package:
module load discovery
module load anaconda3/2022.05

## activate the environment:
source activate myenv

## run the python script which uses NumPy:
python sample_NumPy_script.py

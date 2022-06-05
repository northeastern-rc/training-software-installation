#!/bin/bash
#SBATCH -p gpu
#SBATCH --gres=gpu:v100-sxm2:1
#SBATCH -N 1
#SBATCH -n 4
#SBATCH -t 00:10:00

#Load the Singularity module:
module load singularity/3.5.3

#Define the full path of where your container lives:
SIF=groamcs.sif
#Define the singularity mode:
# Flag -B will mount the host $PWD to /host_pwd in the container. Flag --nv will expose the host GPU(s) to the container.
SINGULARITY="singularity run --nv -B ${PWD}:/host_pwd --pwd /host_pwd ${SIF}"

#Run the GROMACS from within the container:
${SINGULARITY} gmx mdrun -v -deffnm em

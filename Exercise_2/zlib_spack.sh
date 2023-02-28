#!/bin/bash

#SBATCH --job-name=spack-install
#SBATCH --time=01:00:00
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --output=%j.out
#SBATCH --error=%j.err
#SBATCH --partition=express

## Source spack environmnet:
source ~/spack/share/spack/setup-env.sh

## Install a package (uncomment this line for a first-time install):
# spack install zlib@1.2.11

## Source Spack again, and load the package:
source ~/spack/share/spack/setup-env.sh
spack load zlib

# Print the LD_LIBRARY_PATH
echo $LD_LIBRARY_PATH

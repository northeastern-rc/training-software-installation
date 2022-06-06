#!/bin/bash

##### Use outside training ########
#SBATCH --partition=express
##### Use during training #########
##SBATCH --partition=reservation
##SBATCH --reservation=BootCamp2021
###################################
#SBATCH --job-name=install-spack
#SBATCH --time=01:00:00
#SBATCH –-nodes=1
#SBATCH --ntasks=2

## Source spack environmnet:
source ~/spack/share/spack/setup-env.sh

## Install a package (uncomment this line for a first-time install):
## spack install zlib@1.2.11

## Source Spack again, and load the package:
source ~/spack/share/spack/setup-env.sh
spack load zlib

## Use the package. Here, we'll just print the zlib version installed:
python -c "import zlib; print(zlib.__version__)"

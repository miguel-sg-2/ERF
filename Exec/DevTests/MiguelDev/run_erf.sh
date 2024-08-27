#!/bin/bash

#SBATCH --nodes=1
#SBATCH --ntasks-per-node=90
#SBATCH --time=01:00:00
#SBATCH --output=log.erf.%j 
#SBATCH --account=storm
#SBATCH --mail-type=ALL
#SBATCH --mail-user="msanche2@nrel.gov"
#SBATCH --job-name=test_erf
#SBATCH --partition=debug
#SBATCH --export=ALL
#SBATCH --exclusive=user
#SBATCH --mem=205000

source ~/.erf_cpu_kestrel

srun ./ERF.ex inputs_mesoLarge_idealHurr # inputs_mesoLarge # inputs

exit 0


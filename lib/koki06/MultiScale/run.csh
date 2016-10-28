#!/bin/csh
#$ -cwd
#$ -S /bin/sh -V
#$ -pe vasp 16
#$ -N test
#$ -q all.q@asura8


mpirun -np 16 vasp

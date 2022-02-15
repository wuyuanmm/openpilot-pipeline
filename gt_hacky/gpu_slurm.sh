#!/bin/bash

#SBATCH --partition=gpu
#SBATCH -J comma_gt
#SBATCH -o ./log-%j.out # STDOUT

#SBATCH -t 47:00:00
#SBATCH --ntasks=1
#SBATCH --mem=40G
#SBATCH --cpus-per-task=10
#SBATCH --gres=gpu:tesla:1
#SBATCH --exclude=falcon3

python generate_gt.py "$@"

#!/usr/bin/env bash

# Everything presently has ~/Repositories set up
# We're manually cloning small-tools and running this script.
[ $(pwd | grep small) ] && cd .. 

# Clone standard repos 
git clone https://www.github.com/paulErdos/Practice-Prototypes.git
git clone https://www.github.com/paulErdos/NutritionFacts.git
git clone https://www.github.com/paulErdos/vim-bash-RCs.git
git clone https://www.github.com/paulErdos/small-tools.git



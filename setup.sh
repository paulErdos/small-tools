#!/bin/bash

echo "PATH=$PATH:$(pwd)/in-path" >> ~/.bashrc
echo 'alias gcp='"$PWD"'/in-path/gcp' >> ~/.bashrc
echo "PATH=$PATH:$(pwd)/in-path" >> ~/.zshrc 
echo 'alias gcp='"$PWD"'/in-path/gcp' >> ~/.zshrc

$SHELL
#echo "PATH=$PATH:$(pwd)/in-path" >> ~/.bashrc && bash

#!/bin/bash

echo "PATH=$PATH:$(pwd)/in-path" >> ~/.bashrc
echo "PATH=$PATH:$(pwd)/in-path" >> ~/.zshrc 

$SHELL

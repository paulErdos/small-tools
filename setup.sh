#!/bin/bash

#if [ "$#" != 1 ]; then
#    echo '================================================='
#    echo "usage: $0 name-of-tool-to-add-to-path"
#    echo '================================================='
#    echo
#    exit 1
#fi
#
#if [ ! -d in-path ]; then
##    echo
##    echo '============================================'
##    echo '    you must edit your own path yourself    '
##    echo '============================================'
##    echo
##    echo '   The line you want is...'
##    echo "$pwd"
##    echo "   $(pwd)"
##    echo
##    echo
#    mkdir -p in-path  # unnecessary -p
#fi
#
#cp $1 in-path
#echo $PATH | sed s,:,n,g | grep "$(pwd)"
#cat ~/.bashrc | grep "$(pwd)"

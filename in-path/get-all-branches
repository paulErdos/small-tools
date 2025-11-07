#!/usr/bin/env bash

for thing in $(git branch -a | egrep -v '>|main' | grep '/' |  sed 's,  remotes/origin/,,' ); do 
    git checkout $some_branch
done

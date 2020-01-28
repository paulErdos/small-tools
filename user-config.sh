#!/bin/bash

# Set repository-specific uname/email config:
git config user.name "Vincent Steffens"
git config user.email "vincesteffens@gmail.com"
# Verify by cat .git/config

# Q: Does this need to be sourced?
# A: no, but it still needs to be run.

# Q: What if I set the username and email of above to something else?
# A: Commits aren't credited in contribution activity.

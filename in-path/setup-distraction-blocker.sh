#!/usr/bin/env bash

sudo crontab -l 2>/dev/null | grep -Fv distraction-blocker.sh; echo "* * * * * $(which distraction-blocker.sh)" | sudo crontab -


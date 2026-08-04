#!/usr/bin/env bash

(sudo crontab -l 2>/dev/null | grep -Fv distraction-blocker-linux.sh; echo "* * * * * $(which distraction-blocker-linux.sh)") | sudo crontab -

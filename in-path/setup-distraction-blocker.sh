#!/usr/bin/env bash

if [ "$(uname -s)" = "Darwin" ]; then
    (sudo crontab -l 2>/dev/null | grep -Fv distraction-blocker-macos.sh; echo "* * * * * $(which distraction-blocker-macos.sh)") | sudo crontab -
else
    (sudo crontab -l 2>/dev/null | grep -Fv distraction-blocker-linux.sh; echo "* * * * * $(which distraction-blocker-linux.sh)") | sudo crontab -
fi

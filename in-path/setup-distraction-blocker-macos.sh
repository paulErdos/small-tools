#!/usr/bin/env bash

sudo cat > /Library/LaunchDaemons/com.user.distraction-blocker.plist << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.user.distraction-blocker</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/sh</string>
        <string>-c</string>
        <string>/Users/vincent/Repositories/small-tools/in-path/distraction-blocker-macos.sh</string>
    </array>
    <key>StartInterval</key>
    <integer>60</integer>
    <key>EnvironmentVariables</key>
    <dict>
        <key>PATH</key>
        <string>/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin</string>
    </dict>
    <key>RunAtLoad</key>
    <true/>
    <key>StandardOutPath</key>
    <string>/tmp/launchd-stdout.log</string>
    <key>StandardErrorPath</key>
    <string>/tmp/launchd-stderr.log</string>
</dict>
</plist>
EOF

sudo plutil -lint /Library/LaunchDaemons/com.user.distraction-blocker.plist
sudo chown root:wheel /Library/LaunchDaemons/com.user.distraction-blocker.plist
sudo chmod 644 /Library/LaunchDaemons/com.user.distraction-blocker.plist
sudo launchctl load /Library/LaunchDaemons/com.user.distraction-blocker.plist
sudo launchctl list | grep com.user.distraction-blocker


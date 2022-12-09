#!/bin/bash

cd /Library/LaunchDaemons/ && sudo curl -sO https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/com.meter.wifi.awdl.plist
sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist > /dev/null 2>&1
sudo launchctl load -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist

#!/bin/bash

sudo curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/com.meter.wifi.awdl.plist > /Library/LaunchDaemons/com.meter.wifi.awdl.plist
sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist || true
sudo launchctl load -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist

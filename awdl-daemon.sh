#!/bin/bash

curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/disable_awdl.sh > ~/disable_awdl.sh
sudo chmod u+x ~/disable_awdl.sh
sudo curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/com.meter.wifi.awdl.plist > /Library/LaunchDaemons/com.meter.wifi.awdl.plist
sudo sed -i -- "s/YOUR_USERNAME/${USER}/g" /Library/LaunchDaemons/com.meter.wifi.awdl.plist
rm com.meter.wifi.awdl.plist-- 2> /dev/null
sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist || true
sudo launchctl load -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist

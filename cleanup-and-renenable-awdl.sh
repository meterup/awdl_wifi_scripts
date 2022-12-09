#!/bin/bash

sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist
sudo rm /Library/LaunchDaemons/com.meter.wifi.awdl.plist
sudo pkill -f /tmp/disable_awdl.sh
sudo ifconfig awdl0 up
sudo rm /tmp/disable_awdl.sh

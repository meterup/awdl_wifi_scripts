#!/bin/bash

sudo launchctl unload -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist > /dev/null 2>&1
sudo rm /Library/LaunchDaemons/com.meter.wifi.awdl.plist > /dev/null 2>&1
sudo pkill -f /tmp/disable_awdl.sh > /dev/null 2>&1
sudo ifconfig awdl0 up
sudo rm /tmp/disable_awdl.sh > /dev/null 2>&1

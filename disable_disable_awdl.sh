#!/usr/bin/env bash

set -euo pipefail

read -p "See https://www.meter.com/mac-osx-awdl-psa for more details. You will be prompted for your admin password. Do you want to continue? y/n: " choice

case $choice in
[yY]* ) sudo echo "Stopping disable_awdl.sh from running in the background." ;;
[nN]* ) exit ;;
*) exit ;;
esac

sudo pkill -f /tmp/disable_awdl.sh
sudo ifconfig awdl0 up

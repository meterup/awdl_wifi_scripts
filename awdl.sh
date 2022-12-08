#!/usr/bin/env bash

read -p "See https://www.meter.com/mac-osx-awdl-psa for more details. You will be prompted for your admin password. Do you want to continue? y/n" choice

case $choice in
[yY]* ) sudo echo "Installing disable_awdl.sh in your tmp directory. This will run in the background." ;;
[nN]* ) exit ;;
*) exit ;;
esac

curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/disable_awdl.sh > /tmp/disable_awdl.sh
chmod u+x /tmp/disable_awdl.sh

sudo bash /tmp/disable_awdl.sh > /dev/null &

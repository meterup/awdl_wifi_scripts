#!/usr/bin/env bash

read -p "See https://www.meter.com/mac_osx_awdl_psa for more details. You will be prompted for your admin password. Do you want to continue?  y/n/c " choice

case $choice in
[yY]* ) echo "Great" ;;
[nN]* ) exit ;;
[cC]* ) exit ;;
*) exit ;;
esac

sudo echo "Installing ventura_wifi_fix.sh in your home directory. This will run in background."

curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/main/ventura_wifi_fix.sh > ~/ventura_wifi_fix.sh
chmod u+x ~/ventura_wifi_fix.sh

sudo ~/./ventura_wifi_fix.sh > /dev/null &


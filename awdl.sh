#!/usr/bin/env bash

read -p "See https://www.meter.com/mac_osx_awdl_psa for more details. You will be prompted for your admin password. Do you want to continue? y/n" choice

case $choice in
[yY]* ) echo "Installing ventura_disable_awdl.sh in your home directory. This will run in the background." ;;
[nN]* ) exit ;;
*) exit ;;
esac

curl -s https://raw.githubusercontent.com/meterup/awdl_wifi_scripts/ventura_disable_awdl.sh > ~/ventura_disable_awdl.sh
chmod u+x ~/ventura_disable_awdl.sh

sudo ~/./ventura_disable_awdl.sh > /dev/null &

rm ~/ventura_disable_awdl.sh

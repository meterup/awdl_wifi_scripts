See https://www.meter.com/mac-osx-awdl-psa for more context. This script will disable AWDL (Apple Wireless Direct Link)
in order to improve WiFi connectivity for Apple M1/M2 MacBooks.

# Usage

## Run it one time

1. On your Mac, open the Terminal app.
2. Run: 
```bash <(curl -sL https://www.meter.com/awdl.sh)```
3. Acknowledge the prompt and type in your admin password.


## Run it automatically after a restart. 

1. On your Mac, open the Terminal app.
2. Run: 
```curl -sL https://www.meter.com/awdl-daemon.sh | sudo bash````

## For MDM scenario or if you want full control
```
curl https://github.com/meterup/awdl_wifi_scripts/blob/main/com.meter.wifi.awdl.plist > /Library/LaunchDaemons/com.meter.wifi.awdl.plist; launchctl load -w /Library/LaunchDaemons/com.meter.wifi.awdl.plist
```

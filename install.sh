#!/bin/bash
printf "Installing batterymode\n"
sudo cp ./batterymode.sh /usr/bin/batterymode
sudo chmod +x /usr/bin/batterymode
sudo chown root:root /usr/bin/batterymode
printf "batterymode installed!\n"
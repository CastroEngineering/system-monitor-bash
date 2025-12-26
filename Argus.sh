#!/bin/bash

read -p "Choose an attribute (CPU/RAM/Storage/Uptime/Connection/All)" Choice


#CPU=$(top)
#RAM=$()
#Storage=$()
#Uptime=$()
Connection=$(ping -c 1 192.168.2.14)

if (( Choice == "All" )); then

#echo "CPU status: $CPU"
#echo "Ram usage: $RAM"
#echo "Storage capacity: $Storage"
#echo "Uptime: $Uptime"

echo "Connection test: $Connection"
fi

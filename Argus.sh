#!/bin/bash

exitProgram=false

until exitProgram; do

read -p "Choose an attribute (All/CPU/RAM/Storage/Uptime/Connection)" Choice


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

elif ((Choice == "CPU")); then

#echo "CPU status: $CPU"

else 

echo "No choice made, certified you have typed exactly as writen"

fi

read -p "Do you wish to continue? [Y/n]"

done

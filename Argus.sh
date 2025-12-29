#!/bin/bash

exitFunction ()
{

local L_exitLoop=true
while [[ $L_exitLoop == true ]]; do

read -p "Do you wish to continue? [Y/n]" exitChoice

if [ "$exitChoice" == "Y" ]; then
    echo "Continuing..."
    return 0


elif [ "$exitChoice" == "n" ]; then
    exitLoop=true
    echo "Script finished"
    return 0

else
    echo "Check your spelling"

fi

done

}


exitLoop=false
until $exitLoop; do

read -p "Choose an attribute (All/CPU/RAM/Storage/Uptime/Connection)" Choice


#CPU=$(top)
#RAM=$()
#Storage=$()
#Uptime=$()
Connection=$(ping -c 1 192.168.2.14)

if [ "$Choice" == "All" ]; then

#echo "CPU status: $CPU"
#echo "Ram usage: $RAM"
#echo "Storage capacity: $Storage"
#echo "Uptime: $Uptime"

    echo "Connection test: $Connection"
    exitFunction

elif [ "$Choice" == "CPU" ]; then

    echo "CPU status: $CPU"
    exitFunction

else 

    echo "No choice made, certified you have typed exactly as writen on the menu options"

fi

done

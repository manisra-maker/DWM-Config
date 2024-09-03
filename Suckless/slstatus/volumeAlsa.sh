#!/bin/bash

# Fetch default sink 
default_sink=$(pactl get-default-sink)
# Fetch connected bluetooth source
default_BT_device=$(bluetoothctl devices Connected | awk '{print $3$4}')
# fetch percentage of volume
percentage=$(pactl get-sink-volume $default_sink | awk '{print $5}' | grep -o '[0-9]\+')

muteStatus=$(pactl get-sink-mute $default_sink)

# Output the bt_symbol and percentage
if [ "$muteStatus" == "Mute: yes" ]; then 
	echo " $default_BT_device :  |"
else 
	if (( $percentage >= 100 )); then 
		if [ "$default_sink" == *"bluez_sink.2C_BE_EB_6A_81_00.a2dp_sink"* ]; then
			echo " 󰂯  $default_BT_device : $percentage % |"
		else
			echo "   : $percentage % |"
		fi
	elif (($percentage >= 80)); then 
		if [ "$default_sink" == *"bluez_sink.2C_BE_EB_6A_81_00.a2dp_sink"* ]; then
			echo " 󰂯  $default_BT_device : $percentage % |"
		else
			echo "   : $percentage % |"
		fi
	else  
		if [ "$default_sink" == "bluez_sink.2C_BE_EB_6A_81_00.a2dp_sink" ]; then
			echo " 󰂯  $default_BT_device : $percentage % |"
		else
			echo "   : $percentage % |"
		fi
	fi
fi

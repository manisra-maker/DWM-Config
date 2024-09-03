#!/bin/bash

# Fetch battery percentage
percentage=$(cat /sys/class/power_supply/BAT0/capacity)

# Define the path to the battery status file
BATTERY_PATH="/sys/class/power_supply/BAT0/status"
bt_status=$(cat "$BATTERY_PATH")

# Determine the battery bt_symbol based on percentage
if [ "$percentage" -eq 100 ]; then
    bt_symbol=" "
elif [ "$percentage" -ge 75 ]; then
    bt_symbol=" "
elif [ "$percentage" -ge 50 ]; then
    bt_symbol=" "
elif [ "$percentage" -ge 25 ]; then
    bt_symbol=" "
fi

if [ "$bt_status" = "Charging" ]; then
	bt_symbol="  Charging" 
fi

# Output the bt_symbol and percentage
echo "${bt_symbol} : ${percentage}% |"


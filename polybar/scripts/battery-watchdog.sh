#!/bin/sh

batLevel=$(cat /sys/class/power_supply/BAT0/capacity);
batStatus=$(cat /sys/class/power_supply/BAT0/status);


if [[ batLevel -le 15 ]] && [[ "$batStatus" == "Discharging"  ]]; then
notify-send -i ~/.dot/icons/warning.png "Battery low" "Battery level - $batLevel %";
fi

if [[ batLevel -le 5 ]] && [[ "$batStatus" == "Discharging"  ]]; then
systemctl suspend;
fi

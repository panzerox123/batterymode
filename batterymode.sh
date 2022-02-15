#!/bin/bash

case $1 in
    fullcharge)
        echo -n 100 > /sys/class/power_supply/BAT0/charge_stop_threshold
        echo -n 96 > /sys/class/power_supply/BAT0/charge_start_threshold
        ;;

    setcharge)
        echo -n $2 > /sys/class/power_supply/BAT0/charge_start_threshold
        echo -n $3 > /sys/class/power_supply/BAT0/charge_stop_threshold
        ;;
    power)
        cat /sys/class/power_supply/BAT0/power_now
        ;;
    status)
        printf "Start Threshold:\n" 
        cat /sys/class/power_supply/BAT0/charge_start_threshold
        printf "Stop Threshold:\n"
        cat /sys/class/power_supply/BAT0/charge_stop_threshold
        ;;
    *)
        printf "Usage:\n\tbatterymode setcharge <start> <stop>\n\tbatterymode fullcharge\n\tbatterymode power\n\tbatterymode status\n"
        ;;
esac
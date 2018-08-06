#!/bin/bash
while :
do
  status_vpn=$(
    if [[ -e /sys/class/net/tun0 ]] ; then
      echo "VPN"
    else
      echo "NO VPN"
    fi
  )
  intel_brightness=$(cat /sys/class/backlight/intel_backlight/brightness)
  perc_brightness=$(
    echo $intel_brightness | awk '{printf ("%f", ($0/4437)*100)}' | cut -d. -f1
  )
  battery_percentage=$(cat /sys/class/power_supply/BAT0/uevent | grep CAPACITY= | cut -d= -f2)"%"
  battery_status=$(cat /sys/class/power_supply/BAT0/uevent | grep STATUS= | cut -d= -f2)
  time=$(date +%H\:%M)
  date=$(date +%d.%m.%Y)
  network_lan=$(
    if [[ "$(ip addr show dev enp0s25 | grep DOWN)" != '' ]] ; then
      echo "DOWN";
    else
      echo $(ip addr show dev enp0s25 | grep inet | grep -v inet6 | tr -s ' ' | cut -d' ' -f3 | cut -d/ -f1)
    fi
  )
  network_wifi=$(
    if [[ "$(ip addr show dev wlp3s0 | grep DOWN)" != '' ]] ; then
      echo "DOWN";
    else
      echo $(ip addr show dev wlp3s0 | grep inet | grep -v inet6 | tr -s ' ' | cut -d' ' -f3 | cut -d/ -f1)
    fi
  )
  disk_root=$(df -P / | tr -s ' ' | cut -d' ' -f4 | tail -1 | awk '{printf ("%g GiB\n", $0/(1024^2))}')
  cpu_temp=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{printf ("%f \n", $0/1000)}' | cut -d. -f1)"°C"
  keymap=$(cat $HOME/.current_keymap)
  echo "$keymap | $status_vpn | $disk_root | $cpu_temp | $network_lan | $network_wifi | $perc_brightness | $battery_percentage | $battery_status | $time $date"
  sleep 1
done

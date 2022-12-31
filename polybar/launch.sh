#!/bin/bash
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ ${HOSTNAME} == "tank" ]] || [[ ${HOSTNAME} == "IR-L-155" ]] ; then
  polybar notebook &
  polybar nb-external &
elif [[ ${HOSTNAME} == "beast" ]] ; then
  polybar main &
  polybar second &
fi

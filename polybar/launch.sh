#!/bin/bash
killall -q polybar

while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

if [[ ${HOSTNAME} == "tank" ]] ; then
  polybar notebook &
elif [[ ${HOSTNAME} == "beast" ]] ; then
  polybar main &
  polybar second &
fi

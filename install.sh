#!/bin/bash
clear
if [[ `which lolcat > /dev/null 2&>1` ]] ; then
  echo -en "###############################\n" | lolcat
  echo -en "### mslt's config installer ###\n" | lolcat
  echo -en "###############################\n" | lolcat
else
  echo -en "###############################\n"
  echo -en "### mslt's config installer ###\n"
  echo -en "###############################\n"
fi

echo -n "Gathering system information"
if [[ $UID != 0 ]]; then
  if [[ `which sudo > /dev/null 2&>1` ]] ; then
    getadmin=`which sudo`
  elif [[ `which doas > /dev/null 2&>1` ]] ; then
    getadmin=`which doas`
  fi
fi
kernelver=`uname -r`
if [[ -e /etc/gentoo-release ]] ; then
  distri="Gentoo"
fi

sleep 2

echo " ... done"

echo "System Overview:"
if [[ ! $distri ]] ; then
  echo "Unable to recognize distibution"
else
  echo "Distro: $distri"
fi
echo "Kernel: $kernelver"
if [[ ! $getadmin ]] ; then
  echo "No sudo / doas installed"
else
  echo "sudo/doas: $getadmin"
fi

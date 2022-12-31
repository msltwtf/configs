#!/bin/bash
if [[ "$(systemctl is-active openvpn-client@interred)" == "active" ]] ; then
  echo "InterRed VPN"
else
  echo ""
fi

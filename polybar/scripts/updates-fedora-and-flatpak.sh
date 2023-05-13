#!/bin/sh

if ! nc -zw1 google.com 443 &>/dev/null; then
  echo ""
  exit 1
fi

flatpakUpdates=$(flatpak update | grep -Ec '[0-9]+\..*$')
dnfUpdates=$(dnf check-update | grep -Ec ' updates\s+$')
echo $(($flatpakUpdates + $dnfUpdates))

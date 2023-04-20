#!/bin/sh

    flatpakUpdates=$(flatpak update | grep -Ec '[0-9]+\..*$');
    dnfUpdates=$(dnf check-update| grep -Ec ' updates$');
    echo $(($flatpakUpdates + $dnfUpdates))

#!/bin/bash

#BT = "$(journalctl -b --user-unit pulseaudio -g "Battery Level" -o cat | tail -1 | sed -n -E 's/(.* )(.* )(.*)/\3/p')"

#if [  "$BT" == "" ]
#then
#echo Hey that\'s a large number.
#fi

#echo "" $(journalctl -b --user-unit pulseaudio -g "Battery Level" -o cat | tail -1 | sed -n -E 's/(.* )(.* )(.*)/\3/p')


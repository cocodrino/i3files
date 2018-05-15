#!/bin/zsh

volumesk=$(pactl list sinks  | grep "Sink" | grep  -Eo '[0-9]')

re=^-?[0-9]+([.][0-9]+)?$
if  [[ $1 =~ $re ]] ; then
   echo "cambiando volumen" >&2; exit 1
   pactl set-sink-volume $volumesk $1%
else
   echo "muteando canal"
   pactl set-sink-mute $volumesk toggle
fi




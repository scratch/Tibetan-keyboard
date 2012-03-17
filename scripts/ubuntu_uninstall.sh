#!/bin/bash

if [ -f /usr/share/X11/xkb/symbols/bt.orig ]
then
  cp /usr/share/X11/xkb/symbols/bt.orig /usr/share/X11/xkb/symbols/bt
  rm /usr/share/X11/xkb/symbols/bt.orig
else
  echo "Error. Original file not found"
  exit -1
fi

if [ -f /usr/share/X11/xkb/rules/evdev.xml.orig ]
then
  cp /usr/share/X11/xkb/rules/evdev.xml.orig /usr/share/X11/xkb/rules/evdev.xml
  rm /usr/share/X11/xkb/rules/evdev.xml.orig
else
  echo "Error, not evdev.xml.org"
  exit -1
fi


if [ ! -d /usr/share/fonts/truetype/tcrc ]
then
  echo "Error directory: /usr/share/fonts/truetype/tcrc not found"
  exit -1
fi

rm -rf /usr/share/fonts/truetype/tcrc

fc-cache

echo "Tibetan TCRC keymap and fonts uninstall success!"

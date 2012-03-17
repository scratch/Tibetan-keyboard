#!/bin/bash

# TODO: Need to copy the original files into some saner place than
# xx.orig


# If the install fails once, then we'll never allow another install
# until uninstall has been explicitely called.

if [ -f /usr/share/X11/xkb/symbols/bt.orig ]
then
   echo "already installed, exiting. Please run uninstall"
   exit -1;
fi


if [ -f /usr/share/X11/xkb/symbols/bt ]
then
  cp /usr/share/X11/xkb/symbols/bt /usr/share/X11/xkb/symbols/bt.orig 
fi
  cp bt /usr/share/X11/xkb/symbols/bt

if [ -f /usr/share/X11/xkb/rules/evdev.xml ]
then
  cp /usr/share/X11/xkb/rules/evdev.xml /usr/share/X11/xkb/rules/evdev.xml.orig
fi
  cp evdev.xml /usr/share/X11/xkb/rules

mkdir /usr/share/fonts/truetype/tcrc

if [ ! -d /usr/share/fonts/truetype/tcrc ]
then
  echo "Could not create directory: /usr/share/fonts/truetype/tcrc "
  exit -1
fi

cp *.ttf /usr/share/fonts/truetype/tcrc
chown root:root /usr/share/fonts/truetype/tcrc/*.ttf
chmod 644 /usr/share/fonts/truetype/tcrc/*.ttf
mkfontdir /usr/share/fonts/truetype/tcrc

fc-cache

echo "Tibetan TCRC keymap and fonts install success!"

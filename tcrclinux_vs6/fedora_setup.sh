sudo cp bt /usr/share/X11/xkb/symbols
sudo cp evdev.xml /usr/share/X11/xkb/rules
sudo mkdir /usr/share/fonts/tcrc
sudo cp *.ttf /usr/share/fonts/tcrc
sudo chown root.root /usr/share/fonts/tcrc/*.ttf
sudo chmod 644 /usr/share/fonts/tcrc/*.ttf
sudo mkfontdir /usr/share/fonts/tcrc
fc-cache

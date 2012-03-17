sudo cp bt /usr/share/X11/xkb/symbols
sudo cp evdev.xml /usr/share/X11/xkb/rules
sudo mkdir /usr/share/fonts/truetype/tcrc
sudo cp *.ttf /usr/share/fonts/truetype/tcrc
sudo chown root.root /usr/share/fonts/truetype/tcrc/*.ttf
sudo chmod 644 /usr/share/fonts/truetype/tcrc/*.ttf
sudo mkfontdir /usr/share/fonts/truetype/tcrc
fc-cache

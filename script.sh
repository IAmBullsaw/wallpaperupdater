#!/bin/bash
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
wget -nd -q http://i.imgur.com/CtOHvRE.jpg -O /home/`whoami`/.cool_bg.jpg
gsettings set org.gnome.desktop.background picture-uri file:///home/`whoami`/.cool_bg.jpg

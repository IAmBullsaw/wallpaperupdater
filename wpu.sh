#! /bin/bash
BBIN=/bin/bash
BPATH=/home/`whoami`/.script.sh
IPATH=/home/`whoami`/.cool_bg.jpg
USAGE="usage: ./wpu.sh [-i(nstall)|-u(ninstall)]"
# Install
function install {
    cp ./script.sh ~/.script.sh
    WHEN="42 * * * * "
    (crontab -l 2> /dev/null; echo "$WHEN"$BBIN" "$BPATH) | crontab -
    /etc/init.d/cron reload > /dev/null
}
# Uninstall
function uninstall {
    # Remove script and image
    rm -f $BPATH $IPATH
    # Remove crontab entry
    crontab -l | grep -v $BBIN" "$BPATH | crontab -
}
if [ "$#" -lt 1 ]; then
    echo $USAGE
    exit 0
fi

if [ "$1" == "-i" ] || [ "$1" == "-install" ]; then
    install
elif [ "$1" == "-u" ] || [ "$1" == "-uninstall" ]; then
    uninstall
elif [ "$1" == "-r" ]; then
    uninstall && install
else
    echo $USAGE
fi

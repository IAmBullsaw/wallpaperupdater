# Wallpaperupdater
This script is used to automatically set the wallpaper of an Ubuntu machine to some specific file fetched via wget.

## How to enable it :)
* Open a terminal
* cd to this folder (where this readme is located)
* run copy.sh

Script now runs every hour at 42

## How to revert this :(
* Open a terminal
* cd to this folder (where this readme is located)
* run remove.sh

Script removes all files and keeps this folder intact.
## script.sh
This small script sets a wallpaper to one specific file chosen via the hard coded wget command.
It also sets the environment variable that cron needs for actually doing this.

## copy.sh
This script copies the script into the right folder, hiding them out of plain sight.
This also sets up a crontab job, for running the script every hour at minute 42.

## remove.sh
Script removes the files copied via copy.sh and generated via wget. These are:
* cool_bg.jpg
* script.sg

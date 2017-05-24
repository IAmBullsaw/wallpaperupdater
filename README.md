# Wallpaperupdater
This script is used to automatically set the wallpaper of an Ubuntu machine to some specific file fetched via wget.

## How to enable it :)
* Open a terminal
* cd to this folder (where this readme is located)
* run ```./wpu.sh -i```

Script now runs every hour at 42

## How to revert this :(
* Open a terminal
* cd to this folder (where this readme is located)
* run ```./wpu.sh -u```

Script removes all files and keeps this folder intact.

## wpu.sh
This script is both the installer and uninstaller.

Which to run is set via the flag ```-i``` or ```-u```.
Flag ```-r``` is equivalent to ```./wpu.sh -u && ./wpu.sh -i```.
Is no flag passed, nothing happens.

## script.sh
This small script sets a wallpaper to one specific file chosen via the hard coded wget command.
It also sets the environment variable that cron needs for actually doing this.

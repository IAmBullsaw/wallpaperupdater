# Wallpaperupdater
This is supposed to be a prank, to automatically set the wallpaper of an Ubuntu machine to some specific file.

## How to enable it :)
1. Copy a .jpg into this folder.
2. Name it "cool_bg.jpg"
3. run copy.sh on pranked computer
4. prank enabled
5. snicker

## How to revert this :(
First, if this was the one and only crontab job
* remove all crontab jobs with
```crontab -r```
Else, edit the crontab by hand since i am lazy.
```crontab -e```

## script.sh
This small script sets a wallpaper to one specific file, hardcoded to cool_bg.jpg.
It also sets the environment variable that cron needs for actually doing this.

## copy.sh
This script copies the files into the right folders, hiding them out of plain sight.
This also sets up a crontab job, for running the script every hour at minute 42. Fun times.

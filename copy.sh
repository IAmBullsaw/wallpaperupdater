cp ./script.py ~/.script.py
cp ./cool_bg.jpg ~/.cool_bg.jpg
(crontab -l ; echo "42 * * * * python ~/.script.py") | crontab -

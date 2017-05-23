cp ./script.py ~/.script.py
cp ./cool_bg.jpg ~/.cool_bg.jpg
(crontab -l ; echo "00 09 * * 1-5 python ~/.script.py") | crontab -

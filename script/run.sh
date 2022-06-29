#!/bin/bash
rsync -avu --delete /home/nogosari/shared-folder/pdf-in/ /home/nogosari/pdf-wm/in-pdf/
#cp /home/nogosari/shared-folder/watermark/* /home/nogosari/pdf-wm/watermark.png
cp /home/nogosari/shared-folder/signature/*.png /home/nogosari/pdf-wm/watermark.png

cd /home/nogosari/pdf-wm/
python3 main.py
cd ~

rsync -avu --delete /home/nogosari/pdf-wm/out-pdf/ /home/nogosari/shared-folder/pdf-out/ 
rm /home/nogosari/pdf-wm/out-pdf/*

echo "DONE!!!"
exit

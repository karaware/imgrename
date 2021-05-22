#!/bin/bash
plant="euryopspectinatus"
dirName=${plant}_rename_$(date "+%Y%m%d")
echo ${dirName}
mkdir -p /home/pi/pic/${dirName}
cp -ipr /home/pi/script/${plant}_autophototweet/pic/* /home/pi/pic/${dirName}
cd /home/pi/pic/${dirName}
ls | awk '{ printf "mv %s %05d.jpg\n", $0, NR }' | sh
cd ..
sudo mv /home/pi/pic/${dirName} /mnt/${plant}_nas

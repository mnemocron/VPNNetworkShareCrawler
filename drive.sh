#!/bin/bash

umount /dev/sda1
mount /dev/sda1 /mnt/usb

umount /mnt/share
mount -t cifs -o user=name.name,domain=edu.something.com,password=`cat /home/pi/password.txt` //fsemu11.edu.someting.com/E1113_Scanner /mnt/share/

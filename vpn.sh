#!/bin/bash

rm -rf /home/pi/nohup.out

cat /home/pi/password.txt | nohup openconnect vpn.fhnw.ch -u name.name@domain.com --passwd-on-stdin &
#sleep 10



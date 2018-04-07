#!/bin/bash


if [ -d "/mnt/share/folder_inside_share" ]; then
        # Control will enter here if $DIRECTORY exists.
        echo "connected"
else
        telegram-bot -u mnemocron -t "Raspberry Pi\nlost VPN connection, rebooting" && reboot
fi


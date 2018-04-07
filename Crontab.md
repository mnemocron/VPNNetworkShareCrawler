# Cronjobs

---

```bash
0 3,11,19 * * * reboot
@reboot sleep 10 && /home/pi/vpn.sh && sleep 20 && /home/pi/drive.sh
* 6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22 * * * cp -rRpu /mnt/share/* /mnt/usb
* 0,10,20,30,40,50 * * * /home/simon/reboot-on-vpn-loss.sh > /dev/null 2>&1
```

---

The following command checks if the directory is empty - hence, not connected.
This does not work since a connection error would be interpretet as a non-empty directory.

```bash
# * 0,10,20,30,40,50 * * * [ "$(ls -A /mnt/fhnw)" ] || telegram-bot -u mnemocron -t "Raspberry Pi\nlost VPN connection, rebooting" && reboot
```


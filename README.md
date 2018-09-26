# VPN Network Share Crawler

---

[![volkswagen status](https://auchenberg.github.io/volkswagen/volkswargen_ci.svg?v=1)](https://github.com/auchenberg/volkswagen)

This repository contains some scripts to connect a Raspberry Pi to a VPN server and then mount a network share.

The cronjob periodically copies the contents inside the mounted share to an external USB.

### Security / Privacy

It is a catastrophe! The VPN password is stored in plaintext inside a file in the home directory.

### Monitoring

There is a script that checks if the share is still mounted. If not, it sends a Telegram message and reboots. The reboot should reconnect the VPN and mount the share again. (Be aware of bootloops if it is unable to connect or mount)

---

### License

[WTFPL](http://www.wtfpl.net/about/)

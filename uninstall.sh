#!/usr/bin/bash

echo "[+] Running the disable script"
sudo update-rc.d rpi_flash_image.sh disable

echo "[+] Delete script from init.d"
sudo rm /etc/init.d/rpi_flash_image.sh

echo "[+] Remove rc.local"
sudo rm /etc/rc.local

echo "[+] Restore rc.local"
sudo mv /etc/rc.local.bak /etc/rc.local

echo "[+] Uninstall completed successfully... Exit."
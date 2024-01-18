#!/usr/bin/bash

echo "[+] Stop service"
sudo systemctl stop rpi_flash_image.service

echo "[+] Running the disable service"
sudo systemctl disable rpi_flash_image.service

echo "[+] Running the delete service"
sudo rm /etc/systemd/system/rpi_flash_image.service

echo "[+] Uninstall completed successfully... Exit."
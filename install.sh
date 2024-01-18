#!/usr/bin/bash

# Changing access
echo "[+] Changing access..."
sudo chmod 777 /home/rock/rpi_flash_image/rpi_flash_image.sh

# Copy rpi_flash_image.service on service folder
echo "[+] Copy service..."
sudo cp /home/rock/rpi_flash_image/rpi_flash_image.service /etc/systemd/system/rpi_flash_image.service

# Changing access to rpi_flash_image.service on service folder
echo "[+] Changing access..."
sudo chmod 777 /etc/systemd/system/rpi_flash_image.service

# Reboot all service configuration
echo "[+] Reload daemons..."
sudo systemctl daemon-reload
echo "[+] Enable service..."
sudo systemctl enable rpi_flash_image.service

echo "[+] Install completed successfully... Exit."
echo "[!] For start service reboot Rock Pi."
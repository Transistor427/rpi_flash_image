#!/usr/bin/bash
sudo cp /home/rock/rpi_flash_image/rpi_flash_image.sh /etc/init.d/
sudo chmod +x /etc/inid.d/rpi_flash_image.sh
sudo update-rc.d rpi_flash_image.sh defaults
sudo mv /etc/rc.local /etc/rc.local.bak
sudo cp /home/rock/rpi_flash_image/rc.local /etc/rc.local

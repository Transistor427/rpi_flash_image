#!/usr/bin/bash
echo "[+] Changing access"
sudo chmod 777 /home/rock/rpi_flash_image/rpi_flash_image.sh
echo "[+] Copy script on init.d"
sudo cp /home/rock/rpi_flash_image/rpi_flash_image.sh /etc/init.d/rpi_flash_image.sh
echo "[+] Changing access"
sudo chmod a+x /etc/init.d/rpi_flash_image.sh
echo "[+] Running the default script"
sudo update-rc.d rpi_flash_image.sh defaults
echo "[+] Backup rc.local"
sudo mv /etc/rc.local /etc/rc.local.bak
echo "[+] Copy modify rc.local"
sudo cp /home/rock/rpi_flash_image/rc.local /etc/rc.local
echo "[+] Installation completed successfully... Exit."
#!/usr/bin/bash
echo "Start write image" > /home/rock/rpi_flash_image/flash.log
sudo dd if=/home/rock/image_S300_Tender_101023.img of=/dev/mmcblk1 bs=8M status=progress
echo "End write image" > /home/rock/rpi_flash_image/flash.log
sudo shutdown -h now
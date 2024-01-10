#!/usr/bin/bash

# Get image name
image=`ls -la /home/rock/ | grep "img"`

# Message
echo "Start write image" > /home/rock/rpi_flash_image/flash.log
echo "Start write image"

# Write image on rock pi
echo $image
#sudo dd if=/home/rock/image_S300_Tender_101023.img of=/dev/mmcblk1 bs=8M status=progress
#sudo dd if=/home/rock/$image of=/dev/mmcblk1 bs=8M status=progress

# Message
echo "End write image" > /home/rock/rpi_flash_image/flash.log
echo "End write image"

# Shutdown system
#sudo shutdown -h now
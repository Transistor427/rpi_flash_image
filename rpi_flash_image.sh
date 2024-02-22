#!/usr/bin/bash

# Get image name
image=`ls /home/rock/ | grep "img"`

# Message log
echo "Image name: $image"
echo "Start write image" > /home/rock/rpi_flash_image/flash.log
echo "Start write image"

# Write image on rock pi
sudo dd if=/home/rock/$image of=/dev/mmcblk1 bs=8M status=progress


# Message log
echo "End write image" > /home/rock/rpi_flash_image/flash.log
echo "End write image"

# Shutdown system
echo "Shutdown system"
sudo shutdown -h now
#!/usr/bin/bash

# Get image name
HOME="/home/rock"
IMAGE=$(ls $HOME | grep "zip")

if [ -f "$HOME/$IMAGE" ];then
    # Message log
    echo "Image found: $IMAGE" > $HOME/rpi_flash_image/flash.log
    echo "Start write image" > $HOME/rpi_flash_image/flash.log

    # Write image on rock pi
    unzip -p $HOME/$IMAGE | sudo dd of=/dev/mmcblk1 bs=8M status=progress

    # Message log
    echo "End write image" > $HOME/rpi_flash_image/flash.log

    # Shutdown system
    if grep -Fxq 'End write image' "$HOME/rpi_flash_image/flash.log"; then
        sudo shutdown -h now
    else
        echo "[!] Error! Check log!" 
    fi
else
    echo "[!] Image not found. System flashing canceled."
fi

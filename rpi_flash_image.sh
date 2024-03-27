#!/usr/bin/bash

# Get image name

IMAGE=`ls $HOME | grep "zip"`

if test -f "$HOME/$IMAGE"; then
    # Message log
    echo "Image found: $IMAGE"
    echo "Image found: $IMAGE" > $HOME/rpi_flash_image/flash.log
    echo "Start write image" > $HOME/rpi_flash_image/flash.log
    echo "Start write image"

    # Write image on rock pi
    sudo unzip -p $HOME/$IMAGE $HOME/image.img | sudo dd of=/dev/mmcblk1 bs=8M status=progress

    # Message log
    echo "End write image" > $HOME/rpi_flash_image/flash.log
    echo "End write image"

    # Shutdown system
    if grep -Fxq 'End write image' "$HOME/rpi_flash_image/flash.log"; then
        echo "Shutdown system"
        sudo shutdown -h now
    else
        echo "[!] Error! Check log!"
    fi
else
    echo "[!] Image not found. System flashing canceled."
fi

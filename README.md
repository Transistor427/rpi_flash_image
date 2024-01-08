# rpi_flash_image
Script for autoflash rock pi 4b+

##
Start

```
cd ~
git clone https://github.com/Transistor427/rpi_flash_image.git
cd rpi_flash_image
sudo chmod 777 ./*
./install.sh
```

```
sudo nano /etc/rc.local
# добавим перед строчкой exit 0 
/home/rock/rpi_flash_image/rpi_flash_image.sh
```

##
В файле "rpi_flash_image" нужно заменить название образа на актуальный!
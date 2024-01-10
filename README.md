# rpi_flash_image
Script for flashing Rock Pi 4B+

## Install
```
cd ~
git clone https://github.com/Transistor427/rpi_flash_image.git
cd rpi_flash_image
sudo chmod 777 ./install.sh
./install.sh
```
## Use
После установки перезагрузите Rock Pi командой:
```
sudo reboot
``` 
После перезагрузки прошивка запустится автоматически (время прошивки около 15 минут) и Rock Pi выключится.
Для проверки после прошивки и выключения отключите питание, извлеките карточку, подключите дисплей и подключите питание. 
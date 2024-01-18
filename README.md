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
После установки для прошивки необходимо перезагрузить систему командой ```sudo reboot```.
Посмотреть, запущена ли прошивка можно с помощью команды ```htop```. В списке запущенных программ будет отображен пункт, начинающийся на "dd".
Для проверки после прошивки и выключения отключите питание, извлеките карточку, подключите дисплей и подключите питание. 

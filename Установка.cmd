#!/bin/bash

## все команды запускаэтся через SUDO .. если ваш пользователь не пренадлежит этой группе то сперва настраиваем пользователя согласно инструкции https://losst.pro/ustanovka-sudo-v-debian-10
# apt install sudo -y
# в /etc/sudoers Добавить строчку  "%sudo ALL=(ALL:ALL) ALL"



sudo apt-get update &&
sudo apt-get -y dist-upgrade &&


# Ставим яндекс
sudo dpkg -i Yandex.deb chromium-gost*.deb &&

# Ставим крипто про (не сертифицированный ) - скаченный с https://www.cryptopro.ru/downloads после регистрации.. и распаковываем в папку

sudo chmod +x ./linux-amd64_deb/install.sh &&
sudo ./linux-amd64_deb/install.sh &&
# Доставляем пакеты графическую оболочку и прочее
sudo dpkg -i ./linux-amd64_deb/*.deb &&


# кидаем конфиг согласно инструкции (https://support.cryptopro.ru/index.php?/Knowledgebase/Article/View/275)
apt --fix-broken install -y &&
sudo apt install -y pcscd &&
sudo dpkg -i ./plagin/*.deb &&
sudo cp ./plagin/ifcx64.cfg /etc/ifc.cfg  &&
sudo /opt/cprocsp/bin/amd64/csptestf -absorb -certs -autoprov &&
sudo cp /etc/opt/chrome/native-messaging-hosts/ru.rtlabs.ifcplugin.json /etc/chromium/native-messaging-hosts &&


sudo chmod +x ./AutoWorkInstaller*.bin &&
sudo ./AutoWorkInstaller*.bin 
# если выдаст ошибку коннекта.. запускаем ещё раз..  бывает что не пропускает


# Далее следуем инструкции (Далее) вбиваем пароль пользователя из sudo (если запросит)

# Ставим сертификаты.. у меня они экспортированны в .pfx что позволяет ставить сертификаты на раздел жёского диска.

# в яндекс ставим планины 
# https://chrome.google.com/webstore/detail/расширение-для-плагина-го/pbefkdcndngodfeigfdgiodgnmbgcfha
# https://addons.opera.com/ru/extensions/details/cryptopro-extension-for-cades-browser-plug-in/

Не забываем ввести ключь активации на Крипто ПРО 5 =) 



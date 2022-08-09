#!/bin/sh

pacman -Syu
pacman -Sy xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk

mkdir ~/software
cd ~/software

git clone https://git.suckless.org/dwm/
git clone https://git.suckless.org/st/
git clone https://git.suckless.org/dmenu/

cd dwm
make clean install
cd ../st
make clean install
cd ../dmenu
make clean install

echo "exec dwm" > ~/.xinitrc
echo "startx" >> ~/.bash_profile

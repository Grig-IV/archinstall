#!/bin/bash

NAME="grig"
SOFTWARE_PATH="/home/$NAME/software"
configs=$(realpath $(dirname $0)/../configs)

verify_root() {
  if [ "$EUID" -ne 0 ]
    then echo "Please run as root"
    exit
  fi
}

init_default_folders() {
  mkdir -p $SOFTWARE_PATH
  mkdir -p /home/$NAME/.config
}

install_pkg() {
  pacman --noconfirm --needed -S "$1" >/dev/null 2>&1
  echo "installing $1"
}

init_pacman() {
  pacman -Syu >/dev/null 2>&1
  install_pkg curl
  install_pkg wget
}

install_default_pkgs() {
  install_pkg discord
  install_pkg telegram-desktop
  install_pkg firefox
}

install_devel() {
  install_pkg base-devel
  install_pkg python
  install_pkg npm
  install_pkg node
  install_pkg rustup
}

install_neovim() {
  install_pkg neovim
  install_pkg xclip
  ln -sf $configs/nvim /home/$NAME/.config
}

install_keyd() {
  cd $SOFTWARE_PATH
  git clone -q https://github.com/rvaiya/keyd
  cd keyd
  make && make install
  ln -sf $configs/keyd /etc
  sudo systemctl enable keyd && sudo systemctl start keyd
}

install_suckless_dependencies() {
  install_pkg xorg-server
  install_pkg xorg-xinit
  install_pkg libx11 
  install_pkg libxinerama 
  install_pkg libxft 
  install_pkg webkit2gtk
}

install_suckless() {
  cd $SOFTWARE_PATH
  git clone -q https://git.suckless.org/$1/
  cd $1
  make clean install
}


#--- SCRIPT STARTS HERE ---#

verify_root

init_default_folders
init_pacman

install_default_pkgs
install_devel

install_neovim
install_keyd

install_suckless_dependencies
install_suckless dwm
install_suckless st
install_suckless dmenu

ln -sf $configs/.xinitrc /home/$NAME/.xinitrc
ln -sf $configs/.bash_profile /home/$NAME/.bash_profile

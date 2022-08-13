#!/bin/bash

set -e

HOME_G="/home/grig"
SOFTWARE_PATH="$HOME_G/software"

verify_root() {
  if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
  fi
}


install_keyd() {
  cd $SOFTWARE_PATH
  git clone -q https://github.com/rvaiya/keyd
  cd keyd
  make && make install
  sudo systemctl enable keyd && sudo systemctl start keyd
}

install_suckless() {
  cd $SOFTWARE_PATH
  git clone -q https://github.com/Grig-IV/$1
  cd $1
  make -s clean install
}


#--- SCRIPT STARTS HERE ---#

verify_root

install_keyd
install_suckless st
install_suckless dmenu
install_suckless dwm

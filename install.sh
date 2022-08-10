#!/bin/bash

SOFTWARE_PATH="$HOME/software"

verify_root() {
  if [ "$EUID" -ne 0 ]; then
    echo "Please run as root"
    exit
  fi
}

init_default_folders() {
  mkdir -p $SOFTWARE_PATH
  mkdir -p $HOME/.config
}

install_pkg() {
  echo "installing $1"
  pacman --noconfirm --needed -S "$1" >/dev/null 2>&1
}

init_pacman() {
  pacman -Syu >/dev/null 2>&1
  install_pkg git
  install_pkg curl
  install_pkg wget
}

init_dotfiles() {
  configs=$(realpath $(dirname $0))
  install_pkg stow
  stow -t $HOME $configs/home
  stow -t /etc $configs/etc
}

install_default_pkgs() {
  # PLs
  install_pkg base-devel
  install_pkg python
  install_pkg npm
  install_pkg node
  install_pkg rustup

  # neovim
  install_pkg neovim
  install_pkg xclip

  # gui
  install_pkg discord
  install_pkg telegram-desktop
  install_pkg firefox
  install_pkg keepass
}

install_keyd() {
  cd $SOFTWARE_PATH
  git clone -q https://github.com/rvaiya/keyd
  cd keyd
  make && make install
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
init_dotfiles

install_default_pkgs
install_keyd

install_suckless_dependencies
install_suckless dwm
install_suckless st
install_suckless dmenu

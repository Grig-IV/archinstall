#!/usr/bin/bash

path=$(realpath ..)
exec ln -s $path/.config/* ~/.config/
exec ln -s $path/etc/* /etc/

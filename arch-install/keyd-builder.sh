#!/usr/bin/bash

exec git clone https://github.com/rvaiya/keyd ~/Software/keyd
cd ~/Software/keyd
exec make && sudo make install
exec sudo systemctl enable keyd && sudo systemctl start keyd

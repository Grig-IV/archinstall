#!/usr/bin/bash

exec curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
exec rustup component add rust-src

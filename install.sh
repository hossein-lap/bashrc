#!/bin/bash
#   ____     _
#  |  _ \   | |
#  | |_) |  | |
#  |  __/ |_| |
#  |_|   \___/
#
set -e

if [[ ! -d ~/.shist/ ]]; then
	mkdir -v ~/.shist
fi

if [[ -f  ~/.bashrc ]]; then
	mv -v ~/.bashrc ~/.bashrc.bak
	cp -v bashrc ~/.bashrc
else
	cp -v bashrc ~/.bashrc
fi

if [[ -f  ~/.aliases.sh ]]; then
	mv -v ~/.aliases.sh ~/.aliases.sh.bak
	cp -v aliases.sh ~/.aliases.sh
else
	cp -v aliases.sh ~/.aliases.sh
fi

#!/bin/bash

### FUNCTIONS

askuserforroot() {
	if [ "$(id -u)" != "0" ]; then
		echo "This script must be run as root"
		exit 1
	fi
}

upgrade() {
	echo -e "\e[42m *** Checking for updates ***\e[49m"
	pacman -Syyu 
	echo -e "\e[42m *** Upgrading ***\e[49m"
}

clean() {
	echo -e "\e[42m *** Removing unnecessary packages and dependencies ***\e[49m"
}

### MAIN
askuserforroot
upgrade
clean

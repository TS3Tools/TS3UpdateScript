#!/usr/bin/env bash
# Enable debugging by commenting out the following line
#set -x
#
# About: This little Shell-Script updates the TS3UpdateScript and all associated files - configs excluded
# Author: https://github.com/Sebi94nbg
# Project: https://github.com/TS3Tools/TS3UpdateScript
# facebook: www.facebook.com/TS3Tools
# License: GNU GPLv3
#  _______ _____ ____  _              _
# |__   __/ ____|___ \| |            | |
#    | | | (___   __) | |_ ___   ___ | |___
#    | |  \___ \ |__ <| __/ _ \ / _ \| / __|
#    | |  ____) |___) | || (_) | (_) | \__ \
#    |_| |_____/|____/ \__\___/ \___/|_|___/
#
# Donations: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=7ZRXLSC2UBVWE
#

sleep 5s

# Get absolute path of script
cd "$(dirname $0)"

# Download latest version
wget --no-check-certificate -q https://github.com/TS3Tools/TS3UpdateScript/archive/main.zip

# Unzip latest version
if [[ $(unzip main.zip TS3UpdateScript-main/* -x TS3UpdateScript-main/configs/*) ]]; then
	if [ ! $(cp -Rf TS3UpdateScript-main/* . && rm -rf TS3UpdateScript-main/) ]; then
		rm -rf main.zip
		cd - > /dev/null
	        exit 1;
	fi
else
	rm -rf main.zip
	cd - > /dev/null
        exit 0;
fi

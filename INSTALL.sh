#!/bin/sh -e
#PURPOSE: Installer 

if [ $(id -u) -eq 0 ]; then {
	PREFIX="/usr/bin"; # mingw doesnt have /usr/local in $PATH
	cp    gitpush.sh "$PREFIX/gitpush";
	chmod 755        "$PREFIX/gitpush";
} else {
	XDG_BIN_HOME="$HOME/bin"; # mingw doesnt have $HOME/.local/bin in $PATH
	mkdir -p         "$XDG_BIN_HOME";
	cp    gitpush.sh "$XDG_BIN_HOME/gitpush";
	chmod 755        "$XDG_BIN_HOME/gitpush";
} fi

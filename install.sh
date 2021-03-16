#!/bin/bash

# ----------------------------------------------
# Descritpion : Install script for polybar themes
# Autor : Berthose Fin (birkhoff)
# Date : 2021-02-13
# ----------------------------------------------

# Dirs
DIR=`pwd`
BDIR="$HOME/.bin"
FDIR="$HOME/.fonts"
PDIR="$HOME/.config/polybar"

# Install Fonts
install_fonts() {
	echo -e "\n[*] Installing fonts..."
	if [[ -d "$FDIR" ]]; then
		cp -rf $DIR/fonts/* "$FDIR"
	else
		mkdir -p "$FDIR"
		cp -rf $DIR/fonts/* "$FDIR"
	fi
}

# Install Themes
install_themes() {
	if [[ -d "$PDIR" ]]; then
		echo -e "[*] Installing Polybar Themes..."
		echo -e "[*] Creating a backup..."
		mv "$PDIR" "${PDIR}.old"
		mv "$HOME/.Xresources" "$HOME/.Xresources.old"
		{ mkdir -p "$PDIR"; cp -rf $DIR/config/* "$PDIR"; }
		cp -rf $DIR/.Xresources "$HOME"
	else
		{ mkdir -p "$PDIR"; cp -rf $DIR/config/* "$PDIR"; }
		cp -rf $DIR/.Xresources "$HOME"
	fi
	if [[ -f "$PDIR/launch.sh" ]]; then
		echo -e "[*] Successfully Installed."
		echo -e "[*] Use spolybar.sh to change style.\n"
		exit 0
	else
		echo -e "[!] Failed to install.\n"
		exit 1
	fi
}

# Main
main() {
	clear
	cat <<- EOF
		 ____   ___  _  __   ______    _    ____  
		|  _ \ / _ \| | \ \ / / __ )  / \  |  _ \ 
		| |_) | | | | |  \ V /|  _ \ / _ \ | |_) |
		|  __/| |_| | |___| | | |_) /@berthosefin< 
		|_|    \___/|_____|_| |____/_/   \_\_| \_\     
		
	EOF
	install_fonts
	install_themes
}

main

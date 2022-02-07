#!/bin/bash

# ----------------------------------------------
# Descritpion : Polybar style changer
# Autor : Berthose Fin (birkhoff)
# Date : 2022-01-26
# ----------------------------------------------

DIR="$HOME/.config/polybar"
STYLE=$(sed -n '4s/STYLE=//p' $DIR/launch.sh);

if [[ "$1" == "default" ]]; then
	style="default"
    	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "attached" ]]; then
	style="attached"
	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "blocks" ]]; then
	style="blocks"
    	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "docky" ]]; then
	style="docky"
    	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "fin" ]]; then
	style="fin"
	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "forest" ]]; then
	style="forest"
   	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "grayblocks" ]]; then
	style="grayblocks"
    	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "nya" ]]; then
	style="nya"
	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

elif [[ "$1" == "wave" ]]; then
	style="wave"
	sed -i "s/$STYLE/$1/g" $DIR/launch.sh
	sh $DIR/launch.sh

else
	cat <<- EOF
	
	Spolybar - polybar style changer

	Usage:
	spolybar [THEME]
		
	Available Themes :
    . default
    . attached
    . blocks
    . docky
    . fin
    . forest
    . nya
    . grayblocks
    . wave

	EOF
fi

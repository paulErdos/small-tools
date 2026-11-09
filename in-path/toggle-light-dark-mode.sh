#!/usr/bin/env bash

# 1 if true, zero if false; current setting: 1 if light, 0 if dark
condition=$(( 
	0 == $(gsettings get org.gnome.desktop.interface color-scheme | grep light | wc -l)
))


echo -n 'Setting mode to: '
# if we're not on light mode
if [ $condition -eq 0 ]; then 
	echo -n 'dark... '
	gsettings set org.gnome.desktop.interface color-scheme prefer-dark
else
	echo -n 'light... '
	gsettings set org.gnome.desktop.interface color-scheme prefer-light
fi
echo 'Done.'

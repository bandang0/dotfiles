#!/bin/bash

DNAME=fedora

#Link config files
for file in $(ls $DNAME)
do
    echo Linking ~/.$file to ~/dotfiles/$DNAME/$file.
    rm -rf ~/.$file
    ln -s ~/dotfiles/$DNAME/$file ~/.$file
done

#Take care of telegram
curl https://telegram.org/dl/desktop/linux > ~/Downloads/tsetup.tar.xz
if [ -s ~/Downloads/tsetup.tar.xz ]
then
    tar xvf ~/Downloads/tsetup.tar.xz ~/Downloads/Telegram
    cp ~/Downloads/Telegram/Telegram ~/.bin/telegram
    rm -rf ~/Downloads/Telegram
    rm -rf ~/Downloads/tetup.tar.xz
else
    echo Telegram setup file not found, skipping.
fi

#Make directory for Wallpapers
mkdir -pv ~/Pictures/Wallpapers

echo All done.

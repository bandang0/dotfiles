#!/bin/bash

DNAME=dotfiles

#Link config files
for file in $(ls $DNAME)
do
    echo Linking ~/.$file to ~/dotfiles/$DNAME/$file.
    rm -rf ~/.$file
    ln -s ~/dotfiles/$DNAME/$file ~/.$file
done

echo All done.

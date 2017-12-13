#!/bin/bash

#Copy config files
for file in $(ls "fedora"); do
  if [ -d "fedora/${file}" ]; then
    echo -e "Checking if directory /home/$USER/.${file} exists and creating it if not...\n"
    mkdir -pv /home/$USER/.${file}
    echo -e "Copying files in fedora/${file} to /home/$USER/.${file}\n"
    cp -vr fedora/${file}/* /home/$USER/.${file}/
  else
    echo -e "Copying fedora/${file} to /home/$USER/.${file}\n"
    cp fedora/${file} /home/$USER/.${file}
  fi
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

echo -e "All done.\nDon't forget to set your password in the irssi config file.\n"

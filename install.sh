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

echo -e "All done.\nDon't forget to set your password in the irssi config file.\n"
exit 0

#Take care of telegram
curl https://telegram.org/dl/desktop/linux > ~/Downloads/tsetup.1.1.23.tar.xz
tar xvf ~/Downloads/tsetup.1.1.23.tar.xz ~/Downloads/Telegram
cp ~/Downloads/Telegram/Telegram ~/.bin/telegram

echo 'export PATH=~/.bin:$PATH' >> ~.bashrc

#Make directory for Wallpapers
mkdir -pv ~/Pictures/Wallpapers

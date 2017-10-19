#!/bin/bash

for file in $(ls "archlinux"); do
  if [ -d "archlinux/${file}" ]; then
    echo -e "Checking if directory /home/$USER/.${file} exists and creating it if not...\n"
    mkdir -pv /home/$USER/.${file}
    echo -e "Copying files in archlinux/${file} to /home/$USER/.${file}\n"
    cp -r archlinux/${file}/* /home/$USER/.${file}
  else
    echo -e "Copying archlinux/${file} to /home/$USER/.${file}\n"
    cp archlinux/${file} /home/$USER/.${file}
  fi
done

ln -s ~/.irssi/scripts/smartfilter.pl ~/.irssi/scripts/autorun/smartfilter.pl

echo -e "All done.\nDon't forget to set your password in the irssi config file.\n"
exit 0

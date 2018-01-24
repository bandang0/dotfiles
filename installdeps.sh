#!/bin/bash

#Execute this with root proivileges before running the
#install script.

dnf -y copr enable wyvie/i3blocks
dnf -y install python2-pip python3-pip python-imaging i3 i3blocks sysstat acpi feh scrot ImageMagick network-manager-applet irssi rxvt-unicode p7zip dropbox


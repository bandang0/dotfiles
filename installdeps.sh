#!/bin/bash

#Execute this with root proivileges before running the
#install script.

dnf -y copr enable wyvie/i3blocks
dnf -y install python-imaging i3 i3blocks sysstat acpi feh scrot ImageMagick network-manager-applet irssi rxvt-unicode 


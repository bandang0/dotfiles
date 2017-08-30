#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Script requires exactly one argument: gentoo_linux or arch_linux."
  exit 1
fi

for file in $(ls $1); do
  if [ -d "${1}/${file}" ]; then
    echo -e "Checking if directory /home/$USER/.${file} exists and creating it if not...\n"
    mkdir -pv /home/$USER/.${file}
    echo -e "Copying files in ${1}/${file} to /home/$USER/.${file}\n"
    cp -r ${1}/${file}/* /home/$USER/.${file}
  else
    echo -e "Copying ${1}/${file} to /home/$USER/.${file}\n"
    cp ${1}/${file} /home/$USER/.${file}
  fi
done

echo -e "All done.\n"
exit 0

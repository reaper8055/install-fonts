#!/bin/bash

for zipFile in $(ls ./nerd-fonts-tmp/*.zip)
do
  baseName=$(basename -- "$zipFile")
  # extension="${filename##*.}"
  fontDirName="${baseName%.*}"
  [ ! -d "/usr/share/fonts/$fontDirName" ] && sudo mkdir -p /usr/share/fonts/$fontDirName
  sudo unzip $zipFile -d /usr/share/fonts/$fontDirName
  [ ! -d "$HOME/.local/share/fonts/$fontDirName" ] && mkdir -p $HOME/.local/share/fonts/$fontDirName
  unzip -d $zipFile -d $HOME/.local/share/fonts/$fontDirName
done

fc-cache -fv
sudo fc-cache -fv

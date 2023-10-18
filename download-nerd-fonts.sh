#!/bin/bash

VERSION="v3.0.2"
FONTS=("FiraCode" "FiraMono" "Hack" "Inconsolata" "NerdFontsSymbolsOnly" "JetBrainsMono")
DIR="nerd-fonts-tmp"
mkdir -p ./$DIR

for FONT in "${FONTS[@]}"; do
  URL="https://github.com/ryanoasis/nerd-fonts/releases/download/${VERSION}/${FONT}.zip"
  wget -P $DIR $URL -q --show-progress
done


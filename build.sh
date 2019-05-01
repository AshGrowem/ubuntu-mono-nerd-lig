#!/usr/bin/env bash

command -v fontforge || brew install fontforge

originalDirectory=$PWD

## Build LigaUbuntuMono*.ttf
. ./tput-colors.sh
printf "\n${bold}Ligaturizing$reset...\n"

cd Ligaturizer
make

## LigaUbuntuMono ->
printf "\n${bold}Nerding out$reset...\n"
cd ../nerd-fonts
# Generate double-width (default)
# -c === --complete
./font-patcher --no-progressbars -c -out ../fonts/double-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Bold.ttf
echo "${bold}LigaUbuntuMono-Bold.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -out ../fonts/double-width ../Ligaturizer/fonts/output/LigaUbuntuMono-BoldItalic.ttf
echo "${bold}LigaUbuntuMono-BoldItalic.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -out ../fonts/double-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Italic.ttf
echo "${bold}LigaUbuntuMono-Italic.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -out ../fonts/double-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Regular.ttf
echo "${bold}LigaUbuntuMono-Regular.ttf$reset complete...\n"
# Generate single-width variant
# -s === --use-single-width-glyphs
./font-patcher --no-progressbars -c -s -out ../fonts/single-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Bold.ttf
echo "${bold}LigaUbuntuMono-Bold-SingleWidth.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -s -out ../fonts/single-width ../Ligaturizer/fonts/output/LigaUbuntuMono-BoldItalic.ttf
echo "${bold}LigaUbuntuMono-BoldItalic-SingleWidth.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -s -out ../fonts/single-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Italic.ttf
echo "${bold}LigaUbuntuMono-Italic-SingleWidth.ttf$reset complete...\n"
./font-patcher --no-progressbars -c -s -out ../fonts/single-width ../Ligaturizer/fonts/output/LigaUbuntuMono-Regular.ttf
echo "${bold}LigaUbuntuMono-Regular-SingleWidth.ttf$reset complete...\n"

cd $originalDirectory

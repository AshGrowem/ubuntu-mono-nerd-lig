#!/usr/bin/env bash

## TPUT
# Easy, clean, portable terminal colors
# Example Usage:
# printf "I'm seeing ${red}red${reset}.\n"
# https://wiki.bash-hackers.org/scripting/terminalcodes#colors_using_tput

## FOREGROUND
black=$(tput setaf 0)  # Black
blue=$(tput setaf 4)   # Blue / Purple
cyan=$(tput setaf 6)   # Cyan
green=$(tput setaf 2)  # Green
pink=$(tput setaf 5)   # Pink / Magenta
red=$(tput setaf 1)    # Red
white=$(tput setaf 7)  # White
yellow=$(tput setaf 3) # Yellow

## BACKGROUND
blackb=$(tput setab 0)  # Black
blueb=$(tput setab 4)   # Blue / Purple
cyanb=$(tput setab 6)   # Cyan
greenb=$(tput setab 2)  # Creen
pinkb=$(tput setab 5)   # Pink / Magenta
redb=$(tput setab 1)    # Red
whiteb=$(tput setab 7)  # White
yellowb=$(tput setab 3) # Yellow

## FORMATTING
bold=$(tput setaf 5 && tput bold) # Bold
dim=$(tput dim)                   # Half-bright
reset=$(tput sgr0)                # Reset attributes
rev=$(tput rev)                   # Reverse text
standout=$(tput smso)             # Standout
standoutrm=$(tput rmso)           # Standout remove
underline=$(tput smul)            # Underline
underlinerm=$(tput rmul)          # Underline remove

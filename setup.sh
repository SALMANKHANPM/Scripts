#!/usr/bin/env bash

# Importing Stuff..
source .ignore/ignore

# Introduction
printf %"s\n" "Hello World!" "Hope you doing great!" "" "Hope this script will help you to setup the build environment for your preferred DE" "Examples?" "Arch Based (ArchLinux, ManjaroLinux, EndeavourOS, etc..)" "Debian Based (UBUNTU , Pop OS, ZorinOS, etc..)" | typing

# Asking about which distro they use?
printf %"s\n" "" "Which distro in which you want to setup ?" "debian based?" "arch based ?" "if you don't, no worries!" "Please check the below results.." "" | typing && 
cat /etc/*-release && sleep 2 && printf %"s\n" " "

# Choosing the de to initialize the setup.
printf %"s\n" "If you're using debian/ubuntu based distro?" "type ubuntu" "If you're using arch based distro" "type arch" | typing

# ubuntu or arch ?
read -r distro

# running the scripts as per their preference.
if [ "$distro" = "arch" ]
then
    printf %"s\n" "You've chosen Arch.." && printf "RUNNING SCRIPTS" | typing && bash tools/arch/buildenv.sh
else
    printf %"s\n" "You've chosen Arch.." && printf "RUNNING SCRIPTS" | typing
fi
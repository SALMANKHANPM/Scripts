#!/usr/bin/env bash

# Reporting which the user choosen
printf %"s\n" "Since you've choosen to setup." "Which distro you're using?" "Examples?" "Arch Based (ArchLinux, ManjaroLinux, EndeavourOS, etc..)" "Debian Based (Ubuntu, PopOS, ZorinOS, LinuxMint, etc..)" | typing

# Asking about which distro they use?
printf %"s\n" "" "Which distro in which you want to setup ?" "debian based?" "arch based ?" "if you don't, no worries!" "Please check the below results.." "" | typing && 
cat /etc/*-release | grep ID_LIKE && printf " " && sleep 4

# Choosing the de to initialize the setup.
printf %"s\n" "If you see ubuntu or debian?" "Type 'ubuntu' !" "If you see arch?" "Type 'arch' !" | typing

# Reading userinput.
read -r $distro

# Using Conditions to run setup for the userinput.
if [ "$distro" = "arch" ]
then
    printf %"s\n" "You've chosen Arch.." "RUNNING SCRIPTS" "" | typing && bash arch/env_arch.sh
else
    printf %"s\n" "You've chosen Ubuntu.." "RUNNING SCRIPTS" "" | typing && bash debian/env_debian.sh
fi
#!/usr/bin/env bash

# importing Prerequisite Packages.
source .ignore/ignore

# Introduction
printf %"s\n" "Hello World!" "Hope you doing great!" "This script help you to setup your system with the possible environment." | typing

# Asking whether the user want to setup his system to ready for building.
printf %"s\n" "Want to setup your system for Source Development and Building?" "If you want to ? Type 'yes', else enter to skip." | typing

# Reading userinput.
read $setup

# Using if and else to setup or skip
if [ $setup = "yes" ]
then
    bash tools/setup.sh
else
    printf %"s\n" "Skipping setup!" | typing
fi

#!/bin/bash

echo "Cloning nerd-fonts repository"
cd ~/Documents/source
git clone https://github.com/ryanoasis/nerd-fonts.git

echo "Installing SourceCodePro"
cd nerd-fonts
./install.sh SourceCodePro

echo "Gnome terminal profiles are"
dconf list /org/gnome/terminal/legacy/profiles:/
echo "Choose the appropriate one and execute :"
echo "dconf write /org/gnome/terminal/legacy/profiles:/:<profile-id>/font \"'SauceCodePro NF Medium <font-size>'\""

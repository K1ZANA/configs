#!/bin/bash

echo "This script is gonna install everything you need, just give it some time."

echo "Adding Fish Autostart to BaSHRC"
echo "fish" >> ~/.bashrc 
cat ~/.bashrc
echo "Installing FiSH"
sudo apt-get install fish
echo "Installing Git"
sudo apt-get install fish
echo "Installing Neofetch"
sudo apt-get install neofetch

neofetch ## Wow, a NeoFetch.

echo "Installing Kitty"
sudo apt-get install kitty

echo "Cloning https://github.com/K1ZANA/configs"

git clone https://github.com/K1ZANA/configs /tmp/configs

mv /tmp/configs/kitty.conf ~/.config/kitty/kitty.conf
mv /tmp/configs/config.conf ~/.config/neofetch/config.conf

echo "Installing Starship."

sh -c "$(curl -fsSL https://starship.rs/install.sh)"

curl https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/JetBrainsMono/Ligatures/Regular/complete/JetBrains%20Mono%20Regular%20Nerd%20Font%20Complete%20Mono.ttf curl -o "JetBrains Mono NF.ttf"

echo "set --universal fish_greeting" >> ~/.config/fish/config.fish
echo "starship init fish | source" >> ~/.config/fish/config.fish
echo "neofetch --ascii_distro ubuntu_small" >> ~/.config/fish/config.fish
echo "alias yay="pacstall"" >> ~/.config/fish/config.fish
echo "alias yayinst="pacstall -I"" >> ~/.config/fish/config.fish
echo "alias get="sudo apt-get install"" >> ~/.config/fish/config.fish
echo "alias nano="micro"" >> ~/.config/fish/config.fish

echo "Everything installed!"

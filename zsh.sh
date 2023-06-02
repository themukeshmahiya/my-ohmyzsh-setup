#!/bin/sh
#first we should install chsh to change default shell bash to zsh 
sudo dnf install util-linux-user

#now install zsh
sudo dnf install zsh

#now we have to solve error that cause github 443 port connection error
#we can solve it by way but the easy solution is just edit the host file and allow it
sudo nano /etc/hosts
#add the line to this file at the end line is "185.199.108.133 raw.githubusercontent.com"

#now install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#now we install plugins
#autosuggesions plugin

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

#zsh-syntax-highlighting plugin

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#zsh-fast-syntax-highlighting plugin

git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

#zsh-autocomplete plugin

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

#now edit .zshrc
nano .zshrc 

#and replace 'plugins=(git)' with 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete web-search)'
#this is not a script now it is for my own convenience
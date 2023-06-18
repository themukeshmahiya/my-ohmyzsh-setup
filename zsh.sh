#!/bin/bash
#first we should install chsh-package to change default shell bash to zsh 
sudo dnf install util-linux-user

#now install zsh
sudo dnf install zsh

#now install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#now we install plugins

#autosuggesions plugin

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

#zsh-syntax-highlighting plugin

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#now edit .zshrc
nano .zshrc 


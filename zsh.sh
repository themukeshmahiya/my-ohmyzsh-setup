#!/bin/bash
# we should install chsh-package to change default shell bash to zsh  and zsh
sudo dnf install util-linux-user zsh

#now install oh my zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#now we install plugins

#autosuggesions plugin

git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions

#zsh-syntax-highlighting plugin

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting

#now edit .zshrc
nano .zshrc 


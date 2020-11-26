#!/bin/bash

# Check for existing oh-my-zsh instal
if [[ ! -d $HOME/.oh-my-zsh ]] ; then
  curl -L install.ohmyz.sh | zsh
fi

# Install powerlevel9k
if [[ ! -d $HOME/.oh-my-zsh/themes/powerlevel9k ]] ; then
  git clone https://github.com/powerlevel9k/powerlevel9k $HOME/.oh-my-zsh/themes/powerlevel9k/
fi

ln -sf $HOME/git/configs/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/git/configs/zsh/aliases $HOME/.aliases

# Ask for fonts
echo "Should the powerline patched fonts be installed? [Y]es|[N]o"
read temp_choise
choise=$(echo ${temp_choise,,} | cut -c -1)
if [[ $choise == "n" ]] ; then
  exit 0
elif [[ $choise == "y" ]] ; then
  git clone https://github.com/powerline/fonts /tmp/powerline-fonts
  cd /tmp/powerline-fonts
  bash install.sh
fi

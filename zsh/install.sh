#!/bin/bash

# Check for existing oh-my-zsh instal
if [[ ! -d $HOME/.oh-my-zsh ]] ; then
  curl -L install.ohmyz.sh | zsh
fi

# Install powerlevel10k
if [[ ! -d $HOME/.oh-my-zsh/themes/powerlevel9k ]] ; then
  git clone https://github.com/powerlevel9k/powerlevel9k $HOME/.oh-my-zsh/themes/powerlevel9k/
fi
if [[ ! -d $HOME/.oh-my-zsh/custom/themes/powerlevel10k ]] ; then
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

ln -sf $HOME/git/github.com/msltwtf/configs/zsh/zshrc $HOME/.zshrc
ln -sf $HOME/git/github.com/msltwtf/configs/zsh/aliases $HOME/.aliases
ln -sf $HOME/git/github.com/msltwtf/configs/zsh/p10k.zsh $HOME/.p10k.zsh

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

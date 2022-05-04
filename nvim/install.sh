#!/bin/bash
mkdir -p ~/.local/share/nvim/site/autoload
mkdir -p ~/.config/nvim

if [[ ! -e /usr/bin/pip3 ]]; then
  echo "Python3 PIP is required!"
  exit 1
fi

python3 -m venv ~/.config/nvim/venv

source ~/.config/nvim/venv/bin/activate

pip3 install -U flake8 pylint yapf neovim

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -s $(pwd)/init.vim ~/.config/nvim/init.vim

if [[ ! -e /usr/bin/node ]] ; then
  echo "NodeJS is not installed!"
fi

if [[ ! -e /usr/bin/yarn ]] ; then
  echo "Yarn is not installed!"
fi

if [[ ! -e /usr/bin/npm ]] ; then
  echo "NPM is not installed!"
fi

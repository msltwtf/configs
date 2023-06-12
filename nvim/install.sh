#!/bin/bash

git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
ln -sf $(pwd)/custom $HOME/.config/nvim/lua/custom

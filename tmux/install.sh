#!/bin/bash
if [[ ! -d ${HOME}/.tmux ]] ; then
  git clone https://github.com/gpakosz/.tmux $HOME/.tmux
fi
ln -s $HOME/git/configs/tmux/tmux.conf.local $HOME/.tmux.conf.local

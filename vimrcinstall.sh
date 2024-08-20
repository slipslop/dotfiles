#!/usr/bin/env bash

DOTFILES=$(cd $(dirname "${BASH_SOURCE[0]}") && pwd)

rm -rf $HOME/.vimrc
ln -s $DOTFILES/vim/vimrc $HOME/.vimrc


#!/bin/bash

set -e

here=$(dirname $0)

echo "Installing rc files"
for rc in .vimrc .zshrc .gitconfig; do
	ln -vsi "$here/$rc" "$HOME/$rc"
done

mkdir -pv $HOME/.vim/backups
mkdir -pv $HOME/.vim/tmp

echo "Installing oh-my-zsh"
sh -c "$(wget -q https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"



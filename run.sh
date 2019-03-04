#!/bin/sh

current=$PWD

mkdir -p ~/.vim
cp -R $current/syntax $current/ftplugin ~/.vim
sudo apt install exuberant-ctags

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp vimrc.tmp ~/.vimrc

vim +BundleInstall +qall

echo "Installation done."

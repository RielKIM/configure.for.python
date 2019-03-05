#!/bin/sh

current=$PWD

brew install ctags-exuberant
mkdir -p ~/.vim
cp -R $current/syntax $current/ftplugin ~/.vim

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp vimrc.tmp ~/.vimrc

vim +BundleInstall +qall

echo "Installation done."

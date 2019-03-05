#!/bin/sh

current=$PWD

mkdir -p ~/.vim
cp -R $current/syntax $current/ftplugin ~/.vim

if [ "$(id -u)" != "0" ]; then
	sudo apt install exuberant-ctags
else
	apt install exuberant-ctags
fi

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
cp vimrc.tmp ~/.vimrc

vim +BundleInstall +qall

echo "Installation done."

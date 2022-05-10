#!/bin/bash

install() {
	echo -e "\e[33mInstall plug..."
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
	echo -e "\e[33mInstall Vundle..."
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
}

if [ "$1" != "--ignore" ]; then
	install
fi

echo -e "\e[33mCopying .vimrc file..."
cp vimrc ~/.vimrc

echo -e "You must get in vim and type \e[32m':PluginInstall'"

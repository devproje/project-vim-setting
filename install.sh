#!/bin/bash
vim_dir="$HOME/.vim"

autoload_dir="$vim_dir/autoload"
bundle_dir="$vim_dir/bundle"

plug_url=https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vundle_url=https://github.com/VundleVim/Vundle.vim.git

install_vundle() {
	echo -e "\e[33mInstall plug...\e[0m"
	curl -fLo $autoload_dir/plug.vim --create-dirs $plug_url
	
	echo -e "\e[33mInstall Vundle...\e[0m"
	git clone $vundle_url $bundle_dir/Vundle.vim
}

copy_file() {
	echo -e "\e[33mCopying .vimrc file...\e[0m"
	cp vimrc ~/.vimrc
	if [ -f ~/.config/nvim/init.vim ]; then
		rm ~/.config/nvim/init.vim
	fi

	mkdir ~/.config/nvim
	ln -s ~/.vimrc ~/.config/nvim/init.vim
	echo -e "\e[32mInstall Complete! \e[0mIf you want a use this, please run vim and type \e[32m':PluginInstall'\e[0m"
}

install_vundle
copy_file

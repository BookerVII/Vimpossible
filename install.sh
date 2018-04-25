#!/bin/bash
cd ~ && mkdir -p .vim/{bundle,autoload,view} 
cd ~ && mkdir Vimpossible
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/Vimpossible && git clone https://github.com/powerline/powerline.git && git clone https://github.com/NLKNguyen/papercolor-16.git
cat ~/Vimpossible/.bashrc > ~/.bashrc
cat ~/Vimpossible/.vimrc > ~/.vimrc
cd ~/Vimpossible/NLKNguyen/papercolor-16/gnome-terminal && ./base16-papercolor-dark.sh
cd ~/Vimpossible && cp PaperColor.vim ~/.vim/bundle//vim-airline-themes/autoload/airline/themes/
cd ~/Vimpossible && cp papercolor.vim ~/.vim/bundle//vim-airline-themes/autoload/airline/themes/
echo "Dear User, \n please do the following steps finish up the process \n 1) vim +PluginInstall +qall \n 2)"

###REQUIRES FUCKIGN PYTHON FUCK ME!!!

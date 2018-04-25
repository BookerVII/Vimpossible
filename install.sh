#!/bin/bash
cd ~ && mkdir -p .vim/{bundle,autoload,view} 
cd ~ && mkdir Vimpossible
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd ~/Vimpossible && git clone https://github.com/powerline/powerline.git && git clone https://github.com/NLKNguyen/papercolor-16.git
cat ~/Vimpossible/.bashrc > ~/.bashrc
cat ~/Vimpossible/.vimrc > ~/.vimrc
cd ~/Vimpossible/NLKNguyen/papercolor-16.git && ./install.py




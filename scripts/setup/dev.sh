#!/bin/sh

sudo pacman -S cargo python python-pip imagemagic picom go nodejs-lts-hydrogen npm \
    gopls rust-analyzer 

sudo npm i -g svelte-language-server typescript-language-server typescript

cargo install exa
pip3 install --user pywal

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

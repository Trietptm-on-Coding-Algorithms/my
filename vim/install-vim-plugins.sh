#!/bin/bash

VIM_PLUGINS=~/.vim

# checkout .vim
[ -d $VIM_PLUGINS ] && sudo rm -rf $VIM_PLUGINS
git clone https://github.com/mattxlee/vim $VIM_PLUGINS
cd $VIM_PLUGINS
git submodule update --init

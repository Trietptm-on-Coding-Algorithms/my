#!/bin/bash

OUTPUT_DIR=~/vim-source-tmp-dir
VIMDIR=vim74
VIM_PLUGINS=~/.vim
VERSION=7.4
PATCH_FILE="$PWD/patch-for-vim74.diff"

# copy .vimrc
cp .vimrc ~/.vimrc

# checkout .vim
[ -d $VIM_PLUGINS ] && sudo rm -rf $VIM_PLUGINS
git clone https://github.com/mattxlee/vim $VIM_PLUGINS
cd $VIM_PLUGINS
git submodule update --init

# make temporary directory
[ -d $OUTPUT_DIR ] && sudo rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR
cd $OUTPUT_DIR

# download
[ -e vim-$VERSION.tar.bz2 ] && sudo rm vim-$VERSION.tar.bz2
wget ftp://ftp.vim.org/pub/vim/unix/vim-$VERSION.tar.bz2

# extract
tar xf vim-$VERSION.tar.bz2
cd $VIMDIR

# compile source code
patch -p1 < $PATCH_FILE
./configure --with-features=huge --enable-pythoninterp=yes && sudo make install

# removing temporary directory
sudo rm -rf $OUTPUT_DIR

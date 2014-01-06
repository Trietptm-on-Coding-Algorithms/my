#!/bin/bash

OUTPUT_DIR=~/vim-source-tmp-dir
VIMDIR=vim74
VERSION=7.4

# copy .vimrc
cp .vimrc ~/.vimrc

# make temporary directory
[ -d $OUTPUT_DIR ] && rm -rf $OUTPUT_DIR
mkdir $OUTPUT_DIR
cd $OUTPUT_DIR

# download
[ -e vim-$VERSION.tar.bz2 ] && rm vim-$VERSION.tar.bz2
wget ftp://ftp.vim.org/pub/vim/unix/vim-$VERSION.tar.bz2

# extract
tar xf vim-$VERSION.tar.bz2
cd $VIMDIR

# compile source code
patch -p1 < ../patch-for-vim74.diff
./configure --with-features=huge --enable-pythoninterp=yes && make install

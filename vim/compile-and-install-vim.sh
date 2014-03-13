#!/bin/bash

OUTPUT_DIR=~/vim-source-tmp-dir
VIMDIR=vim74
VERSION=7.4
PATCH_FILE="$PWD/patch-for-vim74.diff"

# make temporary directory
[ ! -d $OUTPUT_DIR ] && mkdir $OUTPUT_DIR
cd $OUTPUT_DIR

# download
[ ! -e vim-$VERSION.tar.bz2 ] && wget ftp://ftp.vim.org/pub/vim/unix/vim-$VERSION.tar.bz2

# extract
tar xf vim-$VERSION.tar.bz2
cd $VIMDIR

# compile source code
patch -p1 < $PATCH_FILE
echo ==== compiling vim ====
./configure --with-features=huge --enable-pythoninterp=dynamic
make
sudo make install
echo ==== end of compiling vim ====

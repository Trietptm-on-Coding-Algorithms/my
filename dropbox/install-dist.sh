#!/bin/bash
TARGET_DIR=~/.dropbox-dist
[ -d $TARGET_DIR ] && rm -rf $TARGET_DIR
mkdir $TARGET_DIR
ARCH_FILE=$PWD/dropbox-dist.tar.bz2
cd $TARGET_DIR
tar xf $ARCH_FILE


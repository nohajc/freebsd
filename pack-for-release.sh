#!/bin/sh

set -e

SRC_DIR=~/libkrun-kernel/boot/kernel
TMP_PREFIX=/tmp
DST_DIR_REL=kernel
DST_DIR=$TMP_PREFIX/$DST_DIR_REL

rm -r $DST_DIR || true
mkdir -p $DST_DIR

cp $SRC_DIR/kernel.bin $DST_DIR/
cp $SRC_DIR/*.ko $DST_DIR/

tar cvJf kernel.txz -C $TMP_PREFIX $DST_DIR_REL

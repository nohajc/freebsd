#!/bin/sh

set -e

cd $(dirname "$0")
mkdir -p ~/libkrun-kernel

make KERNCONF=LIBKRUN buildkernel
make KERNCONF=LIBKRUN DESTDIR=~/libkrun-kernel installkernel


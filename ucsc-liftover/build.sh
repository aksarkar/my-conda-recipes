#!/bin/bash
mkdir -p "$PREFIX/bin"
export MACHTYPE=x86_64
export BINDIR=$(pwd)/bin
export MAKE="make -s"
mkdir -p "$BINDIR"
$MAKE -C kent/src/ topLibs hgLib
$MAKE -C kent/src/hg/liftOver
cp bin/liftOver "$PREFIX/bin"
chmod +x "$PREFIX/bin/liftOver"

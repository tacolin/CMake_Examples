#!/bin/sh
set -e

cd build/
cmake ../
make
make install

cd -

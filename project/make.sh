#!/bin/sh
set -e

cd z_temp/
cmake ../
make
make install

cd -

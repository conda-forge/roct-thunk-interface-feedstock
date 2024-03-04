#!/bin/bash

mkdir build
cd build


cmake \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  -DHSAKMT_LINK_FLAGS="-ldl" \
  ..

make VERBOSE=1 -j${CPU_COUNT}
make install

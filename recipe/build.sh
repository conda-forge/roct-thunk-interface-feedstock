#!/bin/bash

mkdir build
cd build


cmake \
  -DCMAKE_INSTALL_PREFIX=$PREFIX \
  -DCMAKE_BUILD_TYPE=Release \
  -DCMAKE_INSTALL_LIBDIR=lib \
  -DBUILD_SHARED_LIBS=ON \
  ..

make VERBOSE=1 -j${CPU_COUNT}
make install

# Copy include files
mkdir -p $PREFIX/include
cp $SRC_DIR/include/hsa* $PREFIX/include/

#!/bin/bash

# default is 10.5 for some reason, which doesn't work
export MACOSX_DEPLOYMENT_TARGET=10.7

./configure --prefix=$PREFIX
make -j${CPU_COUNT} ${VERBOSE_AT}
make check
make install

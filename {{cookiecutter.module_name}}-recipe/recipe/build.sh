#!/bin/bash

LIBVERSION=${PKG_VERSION}

# Clean between variants builds
make -f Makefile.E3 clean

make -f Makefile.E3 MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION}
make -f Makefile.E3 MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION} db
make -f Makefile.E3 MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION} install


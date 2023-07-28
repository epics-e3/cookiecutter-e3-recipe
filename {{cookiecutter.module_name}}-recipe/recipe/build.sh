#!/bin/bash

LIBVERSION=${PKG_VERSION}

# Clean between variants builds
make -f {{cookiecutter.module_name}}.Makefile clean

make -f {{cookiecutter.module_name}}.Makefile MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION}
make -f {{cookiecutter.module_name}}.Makefile MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION} db_internal
make -f {{cookiecutter.module_name}}.Makefile MODULE=${PKG_NAME} LIBVERSION=${LIBVERSION} install


#!/bin/bash

#TODO: in some way, install libjemalloc2 and libmagickwand-dev

sudo apt install -y \
  pkg-config autoconf bison clang rustc pipx \
  openssl-dev zlib-ng-compat-devel libyaml-devel libreadline-devel ncurses-devel libffi-devel gdbm-devel \
  vips vips-tools ImageMagick mupdf\
  redis sqlite-libs mysql-devel libpq-devel postgresql postgresql-server

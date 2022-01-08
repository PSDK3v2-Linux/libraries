#!/bin/sh -e
# sdl_psl1ght.sh by Dan Peori (dan.peori@oopo.net)

## Download the source code.
wget --no-check-certificate https://github.com/zeldin/SDL_PSL1GHT/archive/a51a7d43cb0df061ad8249d67914d9ac31ac29e9.tar.gz -O sdl_psl1ght.tar.gz

## Unpack the source code.
rm -Rf sdl_psl1ght && mkdir sdl_psl1ght && tar --strip-components=1 --directory=sdl_psl1ght -xvzf sdl_psl1ght.tar.gz

## Create the build directory.
cd sdl_psl1ght

## Compile and install.
./script.sh && ${MAKE:-make} && ${MAKE:-make} install

#!/bin/sh -e
# libNoRSX.sh by wargio (wargio@libero.it)

## Download the source code.
wget --no-check-certificate https://github.com/wargio/NoRSX/archive/f8519cd7c4d1f64d38b7621afcb4b4efbd37dbbc.tar.gz -O NoRSX.tar.gz 

## Unpack the source code.
rm -Rf NoRSX && mkdir NoRSX && tar --strip-components=1 --directory=NoRSX -xvzf NoRSX.tar.gz && cd NoRSX

## Compile and install.
${MAKE:-make}

#!/bin/sh -e
# ps3soundlib.sh by CrystalCT (crystal@unict.it)
# PS3 SOUNDLIB Credits: Hermes, HACKERCHANNEL, Xiph.Org, mpg123 project and Wargio/deroad

## Download the source code.
wget --no-check-certificate https://github.com/rhynec/ps3soundlib/archive/ff9d045c3ffa94fd336e992496e1eb55d9f1fd17.tar.gz -O ps3soundlib.tar.gz 

## Unpack the source code.
rm -Rf ps3soundlib && mkdir ps3soundlib && tar --strip-components=1 --directory=ps3soundlib -xvzf ps3soundlib.tar.gz && cd ps3soundlib

## Compile and install.
${MAKE:-make} install -C libs --no-print-directory

#!/bin/sh
sed -i \
         -e 's/#f0f8ff/rgb(0%,0%,0%)/g' \
         -e 's/#1e1f20/rgb(100%,100%,100%)/g' \
    -e 's/#d2d9df/rgb(50%,0%,0%)/g' \
     -e 's/#a1998e/rgb(0%,50%,0%)/g' \
     -e 's/#ffffff/rgb(50%,0%,50%)/g' \
     -e 's/#1e1f20/rgb(0%,0%,50%)/g' \
	"$@"

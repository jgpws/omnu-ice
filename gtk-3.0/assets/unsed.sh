#!/bin/sh
sed -i \
         -e 's/rgb(0%,0%,0%)/#f0f8ff/g' \
         -e 's/rgb(100%,100%,100%)/#1e1f20/g' \
    -e 's/rgb(50%,0%,0%)/#d2d9df/g' \
     -e 's/rgb(0%,50%,0%)/#a1998e/g' \
 -e 's/rgb(0%,50.196078%,0%)/#a1998e/g' \
     -e 's/rgb(50%,0%,50%)/#ffffff/g' \
 -e 's/rgb(50.196078%,0%,50.196078%)/#ffffff/g' \
     -e 's/rgb(0%,0%,50%)/#1e1f20/g' \
	"$@"
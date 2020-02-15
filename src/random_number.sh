#!/bin/sh

# RANDNR
# Simon Hugh Moore
#
# Simple script to generate a random number of set length

[ $1 ] && length="$1" || length=6
tr -cd "[:digit:]" < /dev/urandom | head -c "$length"
echo

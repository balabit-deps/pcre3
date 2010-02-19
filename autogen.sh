#!/bin/sh
set -e
libtoolize --force --copy
aclocal -I m4
autoheader
automake -a -c -f
autoconf
exit 0

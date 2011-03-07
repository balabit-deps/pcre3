#!/bin/sh
set -e
libtoolize --force --copy --install
aclocal -I m4
autoheader
automake -a -c -f
autoconf --force -i
exit 0

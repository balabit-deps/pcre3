#!/bin/sh
set -e
libtoolize --force --copy --install
aclocal -I m4
autoheader
automake -a -c -f
autoconf --force -i
# fix old and broken libtools, which can't recognise 64 bit windows libs and dlls.
find -name libtool -o -name ltmain.sh | xargs sed -i -e "s,'file format pe-i386.*\?','file format \(pei\*-i386\(\.\*architecture: i386\)\?|pe-arm-wince|pe-x86-64\)'," -e 's,cmd \/\/c,,'
exit 0

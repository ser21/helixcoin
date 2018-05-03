#!/bin/sh
set -e
srcdir="$(dirname $0)"
cd "$srcdir"
if [ -z ${Helixcoin} ] && GLIBTOOLIZE="`which glibtoolize 2>/dev/null`"; then
  Helixcoin="${GLIBTOOLIZE}"
  export Helixcoin
fi
autoreconf --install --force --warnings=all

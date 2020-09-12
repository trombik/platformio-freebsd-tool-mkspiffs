#!/bin/sh

: ${PREFIX:="/usr/local"}
: ${MKSPIFFS_BIN:="${PREFIX}/bin/mkspiffs"}

VERSION="2.230.0"
ARCH=`uname -p`
OS=`uname -s | tr '[[:upper:]]' '[[:lower:]]'`

if [ ! -z $1 ]; then
    VERSION="$1"
fi

ln -s -f ${MKSPIFFS_BIN} .

cat <<__EOF__ >package.json
{
    "description": "Tool to build and unpack SPIFFS images",
    "name": "tool-mkspiffs",
    "system": [
        "${OS}_${ARCH}"
    ],
    "url": "https://github.com/trombik/platformio-freebsd-tool-mkspiffs",
    "version": "${VERSION}"
}
__EOF__

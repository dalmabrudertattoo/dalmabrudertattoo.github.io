#!/bin/sh

cd "${0%/*}" || exit

./clean.sh
./build.sh


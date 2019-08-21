#!/bin/bash

cd "${0%/*}/.." || exit

_theme/_scripts/clean.sh

rm -rf media public
rm thumbsup.db index.html


#!/bin/bash

cd "${0%/*}/.." || exit

rm -rf ../media ../public
rm ../thumbsup.db ../index.html


#!/bin/bash

set -e

cd "${0%/*}/.." || exit

[ ! -d "./node_modules" ] && npm install

cp node_modules/jquery.scrollto/jquery.scrollTo.min.js public/js/
cp node_modules/lightgallery/dist/js/lightgallery.min.js public/js/
cp node_modules/lightgallery/dist/css/lightgallery.min.css public/css/
cp node_modules/lightgallery/dist/img/loading.gif public/img/
cp -r node_modules/lightgallery/dist/fonts public/
cp node_modules/jquery/dist/jquery.min.js public/js/

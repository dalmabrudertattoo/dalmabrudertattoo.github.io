#!/bin/bash

set -e

cd "${0%/*}/.." || exit

[ ! -d "./node_modules" ] && npm install

cp node_modules/jquery/dist/jquery.min.js public/js/
cp node_modules/jquery.scrollto/jquery.scrollTo.min.js public/js/
cp node_modules/lightgallery/dist/js/lightgallery.min.js public/js/
cp node_modules/bootstrap/dist/js/bootstrap.min.js public/js/
cp node_modules/lightgallery/dist/css/lightgallery.min.css public/css/
cp node_modules/bootstrap/dist/css/bootstrap.min.css public/css/
cp node_modules/\@fortawesome/fontawesome-free/css/all.min.css public/css/fontawesome-all.min.css
cp node_modules/lightgallery/dist/img/loading.gif public/img/
cp -r node_modules/\@fortawesome/fontawesome-free/webfonts public/
cp -r node_modules/lightgallery/dist/fonts public/

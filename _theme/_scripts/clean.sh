#!/bin/bash

cd "${0%/*}/.." || exit

rm public/js/jquery.scrollTo.min.js
rm public/js/lightgallery.min.js
rm public/css/lightgallery.min.css
rm public/img/loading.gif
rm -rf public/fonts
rm public/js/jquery.min.js

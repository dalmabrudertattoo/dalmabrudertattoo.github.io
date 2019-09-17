#!/bin/bash

set -e

cd "${0%/*}/.." || exit

_theme/_scripts/build.sh

docker run --rm -v "$(pwd)":/work -u $(id -u):$(id -g) \
  thumbsupgallery/thumbsup \
    thumbsup \
      --input /work/_input \
      --output /work/ \
      --theme-path /work/_theme \
      --thumb-size 320 \
      --sort-media-direction desc

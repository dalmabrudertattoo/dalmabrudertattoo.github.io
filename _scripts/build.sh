#!/bin/bash

cd "${0%/*}/.." || exit

docker run --rm -v "$(pwd)":/work \
  thumbsupgallery/thumbsup \
    thumbsup \
      --input /work/_input \
      --output /work/ \
      --theme-path /work/_theme \
      --thumb-size 320

#!/usr/bin/env bash

docker run \
       -it \
       --rm \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v ~/.Xauthority:/home/firefox/.Xauthority \
       -v `pwd`/firefox-data:/home/firefox/.mozilla \
       --network=host \
       bryanpedini/firefox "$@"

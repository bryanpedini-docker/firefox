#!/usr/bin/env bash

if [ -z $VERSION ]; then
  VERSION=78.13.0esr
fi
if [ -z $DATADIR ]; then
  DATADIR=~/firefox-data
fi

docker run \
       --rm \
       --shm-size 256M \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix:/tmp/.X11-unix \
       -v ~/.Xauthority:/home/firefox/.Xauthority \
       -v $DATADIR:/home/firefox/.mozilla \
       --network=host \
       bryanpedini/firefox:$VERSION "$@"

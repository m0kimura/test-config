#!/bin/bash
#
  project=${PWD##*/}
##
  if [ "$1" = "build" ] ; then
    docker build -t ${project} --build-arg user=$USER .
  fi
  docker run -it --rm \
    -v $HOME/config:/home/$USER/config/ \
    ${project}
#


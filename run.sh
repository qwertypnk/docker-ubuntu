#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

docker build -t usi --build-arg OS_USERNAME=$USER $SCRIPTPATH
docker run\
  -p 80:80 -p 443:443 -p 5037:5037 -p 8080:8080 -p 8079:8079 -p 8081:8081 -p 3001:3001 -p 3006:3006 -p 30060:30060\
  --name usc\
  -v /$HOME/:/$USER\
  -v /$HOME/:/Users/$USER\
  -v /$HOME/:/home/$USER\
  -dit\
  usi

#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

docker build -t usi $SCRIPTPATH
docker run -p 80:80 -p 443:443 -p 8080:8080 -p 8079:8079 -p 8081:8081 -p 3001:3001 --name usc -v /$HOME:/usr/src -dit usi

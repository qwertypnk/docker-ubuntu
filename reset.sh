#!/bin/bash

SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

docker rm -f usc
docker rmi -f usi
docker rmi -f $(docker images -f dangling=true -q)
$SCRIPTPATH/run.sh

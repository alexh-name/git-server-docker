#!/bin/sh

set -eu

if ! [ $(id -u) -eq 0 ]; then
   echo "No root permission." 
   exit 1
fi

s='git-server-docker'

docker build --tag alexhname/"${s}":latest ./
docker push alexhname/"${s}":latest

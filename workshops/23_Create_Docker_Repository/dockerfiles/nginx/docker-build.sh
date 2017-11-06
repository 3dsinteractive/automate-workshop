#!/bin/bash
version=$1

if [ "$version" = "" ]; then
    echo -e "Must specify image version"
    exit 1
fi

if [ ! -d "$version" ]; then
    echo -e "Incorrect version number"
    exit 1
fi

docker build -t 3dsinteractive/nginx:$version $version
docker push 3dsinteractive/nginx:$version
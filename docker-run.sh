#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. ./vars

docker kill $name || true
docker rm $name || true

docker run --name $name -d -p 8080:80 $name

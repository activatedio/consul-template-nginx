#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

. ./vars

docker tag $name:$tag $repository/$name:$tag

docker push $repository/$name:$tag

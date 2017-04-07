#!/bin/bash

set -e

if [ -z "$CONSUL_ADDR" ]; then
  echo "CONSUL_ADDR enviroment variable must be specified"
  exit 1
fi

if [ -z "$CONSUL_TEMPLATE" ]; then
  echo "CONSUL_TEMPLATE enviroment variable must be specified"
  exit 1
fi

echo "Starting consul template with addr: $CONSUL_ADDR, template: $CONSUL_TEMPLATE"

consul-template -consul-addr=$CONSUL_ADDR -template="$CONSUL_TEMPLATE:/etc/nginx/conf.d/default.conf:/start-or-reload-nginx.sh"

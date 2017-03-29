#!/bin/bash

set -e

consul-template -consul-addr=$CONSUL_ADDR -template="$CONSUL_TEMPLATE:/etc/nginx/conf.d/default.conf:/start-or-reload-nginx.sh"

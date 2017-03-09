#!/bin/bash

set -e

if [ -f /var/run/nginx.pid ]; then
  nginx -s reload
else
  nginx
fi

exit 0

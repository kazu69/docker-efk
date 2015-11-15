#!/usr/bin/env bash

while ! nc -w 1 fluentd 24224 > /dev/null 2>&1; do
  echo "Nginx waithing TCP connection $FLUENTD_PORT..."
  sleep 1
done

echo "Start Nginx"
nginx -g "daemon off;"

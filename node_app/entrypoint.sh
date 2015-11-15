#!/usr/bin/env bash

while ! nc -w 1 fluentd 24224 > /dev/null 2>&1; do
  echo "NodeJS Application waithing TCP connection $FLUENTD_PORT..."
  sleep 1
done

echo "Start NodeJS Application"
cd /app && npm start

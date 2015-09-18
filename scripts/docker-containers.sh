#!/bin/bash

set -eu

CONTAINERS=(
  "java:8u66"
  "nginx:1.9.1"
  "mysql"
  "shouldbee/ansible-boto"
  "shouldbee/baseimage-go"
  "shouldbee/flyway"
  "shouldbee/go"
  "shouldbee/selenium"
  "sylvainlasnier/memcached"
)

# parallel download
printf "%s\n" "${CONTAINERS[@]}" | xargs -L1 -P0 docker pull

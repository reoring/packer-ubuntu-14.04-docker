#!/bin/bash

set -eu

CONTAINERS=(
  "clue/httpie"
  "mysql"
  "selenium/hub:2.44.0"
  "shouldbee/ansible-boto"
  "shouldbee/baseimage-go"
  "shouldbee/bootstrap-compile-kit"
  "shouldbee/codecept"
  "shouldbee/coffeescript"
  "shouldbee/dredd"
  "shouldbee/flyway"
  "shouldbee/go"
  "shouldbee/html2pdf"
  "shouldbee/nginx-https-reverse-proxy"
  "shouldbee/phantomjs"
  "shouldbee/php"
  "shouldbee/php-cs-fixer"
  "shouldbee/scala:2.10.4"
  "shouldbee/selenium"
  "shouldbee/selenium-node-chrome"
  "shouldbee/selenium-node-firefox"
  "shouldbee/tcpproxy"
  "sylvainlasnier/memcached"
)

# parallel download
printf "%s\n" "${CONTAINERS[@]}" | xargs -L1 -P0 docker pull

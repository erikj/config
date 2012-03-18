#!/bin/bash

NGINX_BIN="/usr/local/sbin/nginx"

function on_die() {
    sudo $NGINX_BIN -s stop
    exit 0
}

trap on_die TERM

# sudo $NGINX_BIN $@ &
$NGINX_BIN $@ &

wait
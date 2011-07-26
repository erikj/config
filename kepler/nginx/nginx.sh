#!/bin/bash

NGINX_BIN="/opt/local/nginx/sbin/nginx"

function on_die() {
    sudo $NGINX_BIN -s stop
    exit 0
}

trap on_die TERM

sudo $NGINX_BIN $@ &

wait
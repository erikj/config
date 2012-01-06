#!/bin/bash

# /opt/local/sbin/unicorn_catalog_ui.sh

rack_env='development'
port=8080

if [ $1 ]; then
  rack_env=$1
fi

if [ $2 ]; then
  port=$2
fi

rails_root="/Users/ej/Dropbox/UCAR/catalog_ui"

bundle="/usr/local/rvm/gems/ruby-1.8.7-p352/bin/bundle"

# http://beginrescueend.com/workflow/scripting/

# Load RVM into a shell session *as a function*

rvm_env="/usr/local/rvm/scripts/rvm"

if [[ -s $rvm_env ]]; then
  source $rvm_env  # This loads RVM into a shell session.
else
  printf "ERROR: An RVM installation was not found.\n"
fi

cd $rails_root

exe="$bundle exec unicorn_rails -E $rack_env -p $port"

echo $exe

$exe

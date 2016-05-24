#!/bin/bash

path="$(cd `dirname $0`;pwd)"
if [ -z `which rbenv 2> /dev/null` ]; then
  echo "install rbenv and ruby-build."
  [ ! -d ~/.rbenv ] && git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  [ ! -d~/.rbenv/plugins/rbenv-default-gems ] && git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
  sh $path/update_default_gems.sh
  [ ! -d ~/.rbenv/plugins/ruby-build ] && git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  sudo sh ~/.rbenv/plugins/ruby-build/install.sh
fi


#!/bin/bash
path="$(cd `dirname $0`;pwd)"
DEFAULT_GEMS="~/.rbenv/default-gems"
if [ -e $DEFAULT_GEMS ]; then
  rm -f $DEFAULT_GEMS
fi
ln -s $path/default-gems $DEFAULT_GEMS


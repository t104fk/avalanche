#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

if [ ! -d $HOME/.vim/bundle ]; then
  mkdir -p ~/.vim/bundle
  if [ ! -d ~/.vim/bundle/neobundle.vim ]; then
    git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
  fi

log_pass "Success to initialize Vim"

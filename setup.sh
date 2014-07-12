#!/bin/bash

if ! which brew >/dev/null 2>&1; then
  echo "brew is not."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
  brew update
  brew install openssl readline
fi

if [ ! -d ~/.rbenv ]; then
  echo "install rbenv."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
fi

#TODO: if not exist, install
if [ `cat /etc/shells | grep zsh | wc -l` -lt 1 ]; then
  echo "cannot use zsh."
  exit 1
fi

[ "/bin/zsh" != $SHELL ] && chsh -s `which zsh`

sh create_symlink.sh
sh setup_git.sh
zsh init_zprezto.zsh


#!/bin/bash

# TODO: check ostype, and least environment.
#function check_env(){}
#function install_env(){}

# TODO: mac only
if ! which brew >/dev/null 2>&1; then
  echo "brew is not."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
  brew update
  brew install openssl readline
fi

sh ruby/rbenv_install.sh

#TODO: if not exist, install
if [ `cat /etc/shells | grep zsh | wc -l` -lt 1 ]; then
  echo "cannot use zsh."
  exit 1
fi

[ "/bin/zsh" != $SHELL ] && chsh -s /bin/zsh

sh create_symlink.sh
sh setup_git.sh
zsh init_zprezto.zsh


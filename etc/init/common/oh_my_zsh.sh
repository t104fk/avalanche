#!/bin/bash

set -eu
source "$DOTPATH"/etc/lib/vital.sh

if [ -z "$DOTPATH" ]; then
  echo '$DOTPATH is not found' >&2
  exit 1
fi

if [ -d "~/.oh-my-zsh" ]; then
  log_warn "oh my zsh is already installed"
  exit
fi

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

ln -f $DOTPATH/etc/oh_my_zsh/zshrc_me.zsh ~/.oh-my-zsh/custom/zshrc_me.zsh
ln -f $DOTPATH/etc/oh_my_zsh/takasing.zsh-theme ~/.oh-my-zsh/themes/takasing.zsh-theme

log_pass "Success to initialize oh my zsh"


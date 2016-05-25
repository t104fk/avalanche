#!/bin/bash

set -eu
# load vital library
# vital is a symlink to etc/install and load helper functions
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "zsh"; then
  case "$PLATFORM" in
    osx)
      if has "brew"; then
        log_echo "Install zsh with Homebrew"
        brew install zsh
      else
        log_fail "error: require: Homebrew"
        exit 1
      fi
      ;;
    linux)
      echo "TODO: support Linux"
      ;;
  esac
fi

if ! contains "${SHELL:-}" "zsh"; then
  zsh_path="$(which zsh)"

  # TODO: Check /etc/shells

  if [ -x "$zsh_path" ]; then
    # child user
    chsh -s "$zsh_path" "$USER"
    log_pass "Change shell to $zsh_path for $USER successfully"
    # TODO: root
  else
    log_fail "$zsh_path: invalid path"
    exit 1
  fi
fi

log_pass "Success to initialize Zsh"

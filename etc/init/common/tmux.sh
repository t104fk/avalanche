#!/bin/bash

set -eu
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "tmux"; then
  case "$PLATFORM" in
    osx)
      if has "brew"; then
        log_echo "Install zsh with Homebrew"
        brew install tmux
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

log_pass "Success to initialize tmux"

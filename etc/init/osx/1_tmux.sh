#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "tmux"; then
  case "$PLATFORM" in
    osx)
      if is_exists "brew"; then
        log_info "Install tmux with Homebrew"
        brew install tmux
      else
        log_fail "error: require: Homebrew"
        exit 1
      fi
      ;;
    linux)
      log_warn "TODO: support Linux"
      ;;
  esac
fi

log_pass "Success to initialize tmux"

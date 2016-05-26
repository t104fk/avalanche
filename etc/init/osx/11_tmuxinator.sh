#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "mux"; then
  case "$PLATFORM" in
    osx)
      if is_exists "brew"; then
        log_info "Install tmuxinator with Homebrew"
        cd $DOTPATH && sudo gem install tmuxinator
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

log_pass "Success to initialize tmuxinator"

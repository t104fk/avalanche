#!/bin/bash

set -eu
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "brew"; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
  log_warn "Homebrew is already installed."
fi

log_pass "Success to initialize Homebrew"


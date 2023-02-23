#!/bin/bash

set -eu
source "$DOTPATH"/etc/lib/helpers.sh

if ! is_exists "brew"; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  PATH=$PATH:/usr/local/opt/go/libexec/bin:$BREW_PATH/bin
else
  log_warn "Homebrew is already installed."
fi

log_pass "Success to initialize Homebrew"


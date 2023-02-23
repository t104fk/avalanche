#!/bin/bash

set -eu
source "$DOTPATH"/etc/lib/helpers

if ! is_exists "brew"; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  PATH=$PATH:/usr/local/opt/go/libexec/bin:/opt/homebrew/bin
  log_pass "Success to initialize Homebrew"
else
  log_warn "Homebrew is already installed."
fi

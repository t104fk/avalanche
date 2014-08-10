#!/bin/bash

# TODO: mac only
if ! which brew 2>/dev/null; then
  echo "brew is not."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
  brew update
  brew install openssl readline
fi


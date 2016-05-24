#!/bin/bash

if [ `uname -a | awk '{print $1}'` != "Darwin" ];then
  echo "you don't need to install homebrew."
  exit 0
fi
if ! which brew 2>/dev/null; then
  echo "brew is not."
  ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
  brew update
  brew install openssl readline
fi

sh brewfile.sh


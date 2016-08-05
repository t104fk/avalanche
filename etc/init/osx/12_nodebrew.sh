#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

if ! is_exists "nodebrew"; then
  case "$PLATFORM" in
    osx)
      curl -L git.io/nodebrew | perl - setup
      ;;
    *)
      echo "???"
      ;;
  esac
fi


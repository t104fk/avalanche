#!/bin/bash

# Stop script if error or unknown valiable
set -eu
source "$DOTPATH"/etc/lib/vital.sh

if [ -z "$DOTPATH" ]; then
  echo '$DOTPATH is not found' >&2
  exit 1
fi

sudo -v

if [ -z "$PLATFORM" -o "$PLATFORM" = "unknown" ]; then
  echo 'invalid platform' >&2
  exit 1
fi

for i in $DOTPATH/etc/init/common/*.sh
for i in $DOTPATH/etc/init/$PLATFORM/*.sh
do
  if [ -f "$i" ]; then
    log_info "$(e_arrow "$(basename "$i")")"
    bash $i
  else
    continue
  fi
done


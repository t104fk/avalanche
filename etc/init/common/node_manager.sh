#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

curl -fsSL https://raw.githubusercontent.com/tj/n/master/bin/n | bash -s lts

log_pass "Success to initialize Node package manager"

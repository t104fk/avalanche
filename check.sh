#!/bin/bash

COMMANDS=(ruby brew git tmux nodebrew rbenv zsh)
for command in ${COMMANDS[@]}
do
  if ! which $command 2>/dev/null; then
    echo "$command is not."
    exit 1
  fi
done

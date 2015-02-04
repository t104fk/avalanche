#!/bin/bash

UNAME=`uname -a | awk '{print $1}'`
case $UNAME in
  Linux)
    echo "Linux"
    COMMANDS=(ruby git tmux rbenv zsh gcc)
    ;;
  Darwin)
    echo "MaxOSX"
    COMMANDS=(ruby brew git tmux nodebrew rbenv zsh)
    ;;
esac
for command in ${COMMANDS[@]}
do
  if ! which $command 2>/dev/null; then
    echo "$command is not."
  fi
done

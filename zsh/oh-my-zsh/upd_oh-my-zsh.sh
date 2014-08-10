#!/bin/bash

TEMPLATE="~/.oh-my-zsh/templates/zshrc.zsh-template"
MY_ZSHRC="~/.zshrc"

if [ -d ~/.oh-my-zsh ]; then
  cd ~/.oh-my-zsh && git pull --rebase
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  test -z `diff $TEMPLATE $MY_ZSHRC 2> /dev/null` || cp -p $TEMPLATE $MY_ZSHRC
fi

ln -f $(cd $(dirname $0); pwd)/zshrc_me.zsh ~/.oh-my-zsh/custom/zshrc_me.zsh


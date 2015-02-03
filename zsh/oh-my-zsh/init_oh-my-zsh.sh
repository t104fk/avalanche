#!/bin/bash

if [ ! -d ~/.oh-my-zsh ]; then
  test -f ~/.zshrc && cp -p ~/.zshrc{,.`date +%Y%m%d`}
  git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  ln -f $(cd $(dirname $0); pwd)/zshrc_me.zsh ~/.oh-my-zsh/custom/zshrc_me.zsh
  ln -f $(cd $(dirname $0); pwd)/themes/takasing.zsh-theme ~/.oh-my-zsh/themes/takasing.zsh-theme
fi


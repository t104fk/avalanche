#!/bin/sh

path="$(cd `dirname $0`;pwd)"

test -f ~/.bash_profile  || ln -s $path/.bash_profile ~/.bash_profile
test -f ~/.vimrc  || ln -s $path/.vimrc ~/.vimrc
test -f ~/.tmux.conf  || ln -s $path/.tmux.conf ~/.tmux.conf
if [ -d "~/.oh-my-zsh" ]; then
  curl -L http://install.ohmyz.sh | sh
fi
test -f ~/.zshrc  || ln -s $path/.zshrc ~/.zshrc

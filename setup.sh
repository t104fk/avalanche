#!/bin/bash

# TODO: check ostype, and least environment.
#function check_env(){}
#function install_env(){}

sh ruby/install_rbenv.sh
sh nodebrew/setup_nodebrew.sh

#TODO: if not exist, install
if [ `cat /etc/shells | grep zsh | wc -l` -lt 1 ]; then
  echo "cannot use zsh."
  exit 1
fi

[ "/bin/zsh" != $SHELL ] && chsh -s /bin/zsh

sh zsh/oh-my-zsh/init_oh-my-zsh.sh
sh vim/setup_vim.sh
sh tmux/setup_tmux.sh

sh create_symlink.sh
sh git/setup_git.sh
echo "relaunch terminal."


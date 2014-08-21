#!/bin/bash

# TODO: check ostype, and least environment.
#function install_env(){}
OSTYPE=`uname -a | awk '{print $1}'`
if [ "xDarwin" = "x$OSTYPE" ]; then
  sh homebrew/setup_homebrew.sh
fi
sh ruby/install_rbenv.sh
#sh nodebrew/setup_nodebrew.sh

if [ "/bin/zsh" != $SHELL ]; then
  case $OSTYPE in
    Darwin)
      chsh -s /bin/zsh
      ;;
    Linux)
      # TODO: ubuntu, centos
      sudo chsh ec2-user -s /bin/zsh
      ;;
  esac
fi

sh zsh/oh-my-zsh/init_oh-my-zsh.sh
sh vim/setup_vim.sh

sh create_symlink.sh
sh git/setup_git.sh
echo "relaunch terminal."


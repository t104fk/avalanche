#!/bin/bash

#sh zsh/oh-my-zsh/init_oh-my-zsh.sh
if [ "/bin/zsh" != $SHELL ]; then
  case `uname -a | awk '{print $1}'` in
    Darwin)
      chsh -s /bin/zsh
      ;;
    Linux)
      # TODO: ubuntu, centos
      sudo chsh ec2-user -s /bin/zsh
      ;;
  esac
fi


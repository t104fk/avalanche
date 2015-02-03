#!/bin/bash

dir=$(cd $(dirname $0);pwd)
sh $dir/oh-my-zsh/init_oh-my-zsh.sh
if [ "/bin/zsh" != $SHELL ]; then
  if [ `uname -a | awk '{print $1}'` = "Darwin" ];then
    chsh -s /bin/zsh
  elif [ -f /etc/redhat-release ];then
    sudo chsh `whoami` -s /bin/zsh
  elif [ -f /etc/system-release ];then
    sudo chsh ec2-user -s /bin/zsh
  else
    echo "we doesn't support your platform."
  fi
fi


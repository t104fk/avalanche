#!/bin/sh

# TODO: improve
authorization=`ls -l ~/.git_template/hooks/pre-commit | grep "rwxr-xr-x" | wc -l`
if [ $authorization -lt 1 ]; then
  chmod 755 ~/.git_template/hooks/pre-commit
  echo "make pre-commit executable."
fi
init_temp=`cat ~/.gitconfig | grep ".git_template" | wc -l`
if [ $init_temp -lt 1 ]; then
  git config --global init.templatedir '~/.git_template'
  echo "config init template."
fi


#!/bin/sh

path="$(cd `dirname $0`;pwd)"

function create_symlink() {
  if [ ! -e ~/$1 ]; then
    ln -s $path/$1 ~/$1
    echo "create symbolic link: $1"
  fi
}

# TODO: for
create_symlink .bash_profile
create_symlink .vimrc
create_symlink .tmux.conf
create_symlink .jshintrc
create_symlink .git_template
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

# zsh
zsh init_zprezto.sh
create_symlink .zshrc


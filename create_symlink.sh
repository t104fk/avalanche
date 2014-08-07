#!/bin/sh

path="$(cd `dirname $0`;pwd)"

function create_symlink() {
  if [ ! -e ~/$1 ]; then
    ln -s $path/$1 $2
    echo "create symbolic link: $1"
  fi
}

DOTFILES=(.vimrc .tmux.conf .jshintrc .git_template .vim.local .bin)
for file in ${DOTFILES[@]}
do
  create_symlink $file ~/$file
done

create_symlink utils/ssh-copy-id /usr/local/bin/ssh-copy-id


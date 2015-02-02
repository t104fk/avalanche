#!/bin/sh

path="$(cd `dirname $0`;pwd)"

function create_symlink() {
  if [ ! -e ~/$1 ]; then
    ln -s $path/$1 $2
    echo "create symbolic link: $1"
  fi
}

DOTFILES=(.vimrc .tmux.conf .jshintrc .git_template .vim.local .bin .alias .peco .oracle_client .tigrc)
for file in ${DOTFILES[@]}
do
  create_symlink $file ~/$file
done

SSHCOPYID='/usr/local/bin/ssh-copy-id'
if [ "xDarwin" = "x`uname -a | awk '{print $1}'`" -a ! -e $SSHCOPYID ]; then
  create_symlink utils/ssh-copy-id $SSHCOPYID
fi


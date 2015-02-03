#!/bin/bash

# TODO: check ostype, and least environment.
# if not installed oh-my-zsh, stop bootstrap.
sh zsh/setup_zsh.sh
sh homebrew/install.sh
sh ruby/install_rbenv.sh
sh nodebrew/setup_nodebrew.sh
sh vim/setup_vim.sh
sh git/setup_git.sh
sh create_symlink.sh
echo "relaunch terminal."

#!/bin/bash
ROOT=$(cd $(dirname $0)/../;pwd)
IGNORE=(.hateblo.vim.local .evervim.vim.local)
for i in ${IGNORE[@]}
do
  git update-index --skip-worktree $ROOT/.vim.local/$i
done


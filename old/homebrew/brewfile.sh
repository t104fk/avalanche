#!/bin/bash

TAPS=('caskroom/cask' 'caskroom/versions' 'homebrew/versions' 'peco/peco' 'motemen/ghq' 'homebrew/fuse')
for t in ${TAPS[@]}
do
  exists=`brew tap | grep $t | wc -l`
  [ $exists -lt 1 ] && brew tap $t
done

CASKS=(java6 java7 osxfuse chefdk)
for c in ${CASKS[@]}
do
  brew cask list $c >& /dev/null
  [ $? -ne 0 ] && brew cask install $c
done

brew cask cleanup

PACKAGES=(\
  git\
  tmux\
  reattach-to-user-namespace\
  csshx\
  nkf\
  brew-cask\
  htop\
  peco\
  wget\
  jq\
  tree \
  watch \
  tig
)
for p in ${PACKAGES[@]}
do
  brew list $p >& /dev/null
  [ $? -eq 0 ] && continue
  brew install $p
done

brew cleanup


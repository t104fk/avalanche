#!/bin/bash

# brew list will be error status, so remove -e option
set -u
source "$DOTPATH"/etc/lib/vital.sh

TAPS=('caskroom/cask' 'caskroom/versions' 'homebrew/versions' 'peco/peco')
for t in ${TAPS[@]}
do
  exists=`brew tap | grep $t | wc -l`
  [ $exists -lt 1 ] && brew tap $t
done

PACKAGES=(\
  git \
  tmux \
  reattach-to-user-namespace \
  csshx \
  nkf \
  brew-cask \
  htop \
  peco \
  wget \
  jq \
  tree \
  watch \
  tig
)
for p in ${PACKAGES[@]}
do
  brew list $p >& /dev/null
  if [ $? -eq 0 ]; then
    log_info "$p is already installed"
    continue
  fi
  brew install $p
  e_done "Success to install $p"
done

brew cleanup

#CASKS=(java6 java7 osxfuse chefdk)
#for c in ${CASKS[@]}
#do
#  brew cask list $c >& /dev/null
#  [ $? -ne 0 ] && brew cask install $c
#done

#brew cask cleanup

log_pass "Success to install all packages"


#!/bin/bash

# brew list will be error status, so remove -e option
set -u
source "$DOTPATH"/etc/lib/helpers

TAPS=('caskroom/cask' 'caskroom/versions' 'homebrew/versions' 'peco/peco')
for t in ${TAPS[@]}
do
  exists=`brew tap | grep $t | wc -l`
  [ $exists -lt 1 ] && brew tap $t
done

PACKAGES=(\
  reattach-to-user-namespace \
  # csshx \
  nkf \
  brew-cask \
  peco \
  wget \
  jq \
  tree \
  watch \
  tig \
  yarn \
  libtool \
  freetype \
  fontconfig
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

log_pass "Success to install all packages"


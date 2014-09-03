#!/bin/bash

TAPS=('caskroom/cask' 'caskroom/versions' 'homebrew/versions')
# TODO: check existing taps
for t in $TAPS
do
  brew tap $t || true
done

PACKAGES=(git tmux mysql55 reattach-to-user-namespace csshx nkf brew-cask)
for p in $PACKAGES
do
  brew install $p || true
done
install mysql55 && link mysql55 --force || true

cleanup

CASKS=(java6 java7)
for c in $CASKS
do
  brew cask install $c || true
done

cask cleanup


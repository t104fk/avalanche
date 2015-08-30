#!/bin/bash

TAPS=('caskroom/cask' 'caskroom/versions' 'homebrew/versions' 'peco/peco' 'motemen/ghq' 'homebrew/fuse')
for t in ${TAPS[@]}
do
  exists=`brew tap | grep $t | wc -l`
  [ $exists -lt 1 ] && brew tap $t
done

PACKAGES=(\
  git\
  tmux\
  mysql55\
  reattach-to-user-namespace\
  csshx\
  nkf\
  brew-cask\
  htop\
  peco\
  ghq\
  wget\
  maven\
  jq\
  gradle\
  redis\
  tree \
  watch \
  nginx \
  rrdtool \
  rlwrap \
  tig \
  hiredis \
  go \
  mercurial \
  postgresql \
  ext4fuse
)
for p in ${PACKAGES[@]}
do
  brew list $p >& /dev/null
  [ $? -eq 0 ] && continue
  if [ "xmysql55" = "x$p" ]; then
    brew install $p && brew link $p --force
  elif [ "xgo" = "x$p" ]; then
    brew install $p --with-cc-all
  else
    brew install $p
  fi
done

brew cleanup

CASKS=(java6 java7)
for c in ${CASKS[@]}
do
  brew cask list $c >& /dev/null
  [ $? -ne 0 ] && brew cask install $c
done

brew cask cleanup


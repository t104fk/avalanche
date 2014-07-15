#!/bin/bash

if [ -z `which rbenv 2> /dev/null` ]; then
  echo "install rbenv and ruby-build."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/rbenv-default-gems.git ~/.rbenv/plugins/rbenv-default-gems
  ln -s ruby/default-gems ~/.rbenv/default-gems
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  sudo sh ~/.rbenv/plugins/ruby-build/install.sh
fi

VERSIONS=(1.9.3-p547 2.1.2)
for version in ${VERSIONS[@]}
do
  if [ `rbenv versions | grep $version | wc -l` -lt 1 ]; then
    rbenv install $version
  fi
done

rbenv global 2.1.2
rbenv rehash


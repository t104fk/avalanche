#!/bin/bash

if [ ! -d ~/.rbenv ]; then
  echo "install rbenv and ruby-build."
  git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
  git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
  sudo sh ~/.rbenv/plugins/ruby-build/install.sh
fi

VERSIONS=(1.9.3-p547 2.0.0-p481 2.1.2)
for version in ${VERSIONS[@]}
do
  if [ `rbenv versions | grep $version | wc -l` -lt 1 ]; then
    rbenv install $version
  fi
done

rbenv global 2.1.1
rbenv rehash


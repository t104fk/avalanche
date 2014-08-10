#!/bin/bash
brew upgrade ruby-build
VERSIONS=(1.9.3-p547 2.1.2)
for version in ${VERSIONS[@]}
do
  if [ `rbenv versions | grep $version | wc -l` -lt 1 ]; then
    rbenv install $version
  fi
done
rbenv global 2.1.2
rbenv rehash


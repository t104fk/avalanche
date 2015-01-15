#!/bin/bash
path="$(cd `dirname $0`;pwd)"
sh $path/update_default_gems.sh
VERSIONS=(1.9.3-p547 2.1.5 2.2.0)
for version in ${VERSIONS[@]}
do
  if [ `rbenv versions | grep $version | wc -l` -lt 1 ]; then
    rbenv install $version
  fi
done
rbenv global 2.2.0
rbenv rehash


#!/bin/bash
path="$(cd `dirname $0`;pwd)"
sh $path/update_default_gems.sh
versions=(`cat $path/versions`)
for version in ${versions[@]}
do
  if [ `rbenv versions | grep $version | wc -l` -lt 1 ]; then
    rbenv install $version
  fi
done
rbenv global ${versions[((${#versions[*]}-1))]}
rbenv rehash


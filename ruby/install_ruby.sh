#!/bin/bash

if [ ! `which rbenv 2>/dev/null` ]; then
  echo "rbenv is not."
  exit 1
fi

VERSIONS=(1.9.3-p547 2.1.2)
for v in ${VERSIONS[@]}
do
  if [ `rbenv versions | grep $v | wc -l` -lt 1 ]; then
    rbenv install $v
  fi
done

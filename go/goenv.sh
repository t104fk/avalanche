#!/bin/bash
GOENVROOT=~/.goenv

for p in go git hg
do
  if ! type $p &> /dev/null; then
    echo "There isn't $p command."
    exit 1
  fi
done

cwd=$(cd `dirname $0`;pwd)
if ! type goenv &> /dev/null; then
  echo installing goenv...
  if [ ! -d ~/.goenv ]; then
    git clone https://bitbucket.org/ymotongpoo/goenv ~/.goenv
    cd ~/.goenv
    go build -o goenv *.go
    chmod +x goenv
  fi
fi

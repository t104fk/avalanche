#!/bin/bash

cd ~/
if [ -z `which nodebrew 2> /dev/null` ]; then
  curl -L git.io/nodebrew | perl - setup
fi
nodebrew install v0.10.36
nodebrew use v0.10.36
npm install -g grunt-cli


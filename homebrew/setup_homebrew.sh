#!/bin/bash
dir=$(cd $(dirname $0);pwd)
cd $dir
brew bundle

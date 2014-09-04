#!/bin/bash

dir=$(cd $(dirname $0);pwd)
cd $dir
brew upgrade
brew update
sh brewfile.sh

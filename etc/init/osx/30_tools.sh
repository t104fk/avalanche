#!/bin/bash

trap 'echo Error: $0:$LINENO stopped; exit 1' ERR INT
set -eu
source "$DOTPATH"/etc/lib/vital.sh

#if is_exists "brew" && is_exists "easy_install" ; then
#if is_exists "brew"; then
#  case "$PLATFORM" in
#    osx)
#      #brew install freetype openjpeg
#      #sudo easy_install blockdiag
#      #sudo easy_install seqdiag
#      #sudo easy_install actdiag
#      #sudo easy_install nwdiag
#      #brew install libtool freetype fontconfig webp gd
#      #brew install graphviz
#      ;;
#    *)
#      echo "???"
#      ;;
#  esac
#fi


#!/bin/bash
if [ ! -d ~/.svm ];then
  git clone git@github.com:yuroyoro/svm.git $HOME/.svm
  mkdir $HOME/.svm/bin
  ln -s $HOME/.svm/svm $HOME/.svm/bin/svm
fi

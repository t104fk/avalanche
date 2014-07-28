#!/bin/bash

FILES=(.zlogin .zlogout .zprofile .zpreztorc .zshrc .zshenv .zprezto)
for f in ${FILES[@]}
do
  rm -fr ~/$f
done

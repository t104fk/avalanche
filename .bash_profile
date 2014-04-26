#!/bin/bash

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# alias
alias ls='ls -G'
alias ll='ls -lG'

# PS1
# default => PS1="\h:\W \u\$"
PS1="\u@\h \W\$ "

#java
export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home/"
export JAVA=$JAVA_HOME/bin

zsh

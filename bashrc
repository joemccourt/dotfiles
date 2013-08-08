#!/usr/bin/env bash

source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/config

export EDITOR=`which vim`
export PYTHONSTARTUP=$HOME/.pystartup

export CLICOLOR=1

# RVM startup script
# Lets me use RVM-installed global gems e.g. zeus
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"


if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

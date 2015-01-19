#!/usr/bin/env bash

source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/config

export EDITOR=`which vim`
export PYTHONSTARTUP=$HOME/.pystartup

export CLICOLOR=1

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

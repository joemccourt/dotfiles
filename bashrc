#!/usr/bin/env bash

source ~/.bash/aliases
source ~/.bash/paths
source ~/.bash/config

export EDITOR=`which vim`
export PYTHONSTARTUP=$HOME/.pystartup

export CLICOLOR=1

which dircolors &>/dev/null
if [ $? -eq 0 ]; then
    if [ -r ~/.dircolors ]; then
	eval "$(dircolors -b ~/.dircolors)"
    else
	eval "$(dircolors -b)"
    fi
    cmds=(ls dir vdir grep fgrep egrep)
    for cmd in ${cmds[@]}; do
	eval "alias $cmd=\"$cmd --color=auto\""
    done
fi

if [ -f ~/.localrc ]; then
  . ~/.localrc
fi

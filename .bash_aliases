#!/usr/bin/env bash

[[ -f $XDG_CONFIG_HOME/git/aliases ]] && . $XDG_CONFIG_HOME/git/aliases
[[ -f $XDG_CONFIG_HOME/exa/aliases ]] && . $XDG_CONFIG_HOME/exa/aliases
[[ -f $XDG_CONFIG_HOME/pkg/aliases ]] && . $XDG_CONFIG_HOME/pkg/aliases


alias path="echo $PATH | tr ' ' '\n'"
alias mkdir='mkdir -p'
alias rmdir='rmdir * 2 > /dev/null'
alias cls='clear'
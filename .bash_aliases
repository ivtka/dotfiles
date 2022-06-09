#!/usr/bin/env bash

[[ -f $XDG_CONFIG_HOME/git/aliases ]] && . $XDG_CONFIG_HOME/git/aliases
[[ -f $XDG_CONFIG_HOME/exa/aliases ]] && . $XDG_CONFIG_HOME/exa/aliases
[[ -f $XDG_CONFIG_HOME/pkg/aliases ]] && . $XDG_CONFIG_HOME/pkg/aliases
[[ -f $XDG_CONFIG_HOME/nvim/aliases ]] && . $XDG_CONFIG_HOME/nvim/aliases


# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../..'

alias path="echo $PATH | tr ' ' '\n'"
alias mkdir='mkdir -p'
alias rmdir='rmdir * 2 > /dev/null'
alias cls='clear'

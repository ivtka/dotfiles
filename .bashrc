#
# The beginning of everything
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Pull in bash alias/functions definitions
[[ -f $HOME/.bash_functions ]] && . $HOME/.bash_functions
[[ -f $HOME/.bash_aliases ]] && . $HOME/.bash_aliases

# Helper utilities
[[ -f /usr/share/fzf/key-bindings.bash ]] && . /usr/share/fzf/key-bindings.bash

# Prompt
PS1='\[\e[34m\]\w\[\e[39m\] \[\e[33m\]ꑭ\[\e[39m\] '
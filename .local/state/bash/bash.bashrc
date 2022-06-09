#
# The beginning of everything
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Pull in bash alias/functions definitions
[[ -f $XDG_STATE_HOME/bash/functions ]] && . $XDG_STATE_HOME/bash/functions
[[ -f $XDG_STATE_HOME/bash/aliases ]] && . $XDG_STATE_HOME/bash/aliases

# Helper utilities
[[ -f /usr/share/fzf/key-bindings.bash ]] && source /usr/share/fzf/key-bindings.bash

# Prompt
PS1='(\u \[\e[31m\]ꑭ\[\e[39m\] \w) '

XDG_CONFIG_HOME="$HOME/.config"
XDG_STATE_HOME="$HOME/.local/state"
PATH="$PATH:$HOME/.cargo/bin"
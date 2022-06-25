#
# The beginning of everything
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config"

if [ -x "$(command -v hx)" ]; then
  export EDITOR="hx"
elif [ -x "$(command -v nvim)" ]; then
  export EDITOR="nvim"
elif [ -x "$(command -v helix)" ]; then
  export EDITOR="helix"
else
  echo "Not installed any editor"
fi

# Pull in bash alias/functions definitions
[[ -f $HOME/.bash_functions ]] && . $HOME/.bash_functions
[[ -f $HOME/.bash_aliases ]] && . $HOME/.bash_aliases
[[ -f $HOME/.bash_completions ]] && . $HOME/.bash_completions

# Helper utilities
[[ -f /usr/share/fzf/key-bindings.bash ]] && . /usr/share/fzf/key-bindings.bash

# Prompt
PS1='\[\e[34m\]\w\[\e[39m\] \[\e[33m\]ꑭ\[\e[39m\] '

eval "$(starship init bash)"


# fnm
export PATH=/home/seshotake/.fnm:$PATH
eval "`fnm env`"

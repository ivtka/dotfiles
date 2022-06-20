[[ -f ~/.bashrc ]] && . ~/.bashrc

. "$HOME/.cargo/env"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export PATH="$HOME/.cargo/bin:$PATH"
export HISTFILE="$XDG_STATE_HOME/bash/history"
export EDITOR="hx"

xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync 
xrandr --addmode VGA-0 "1920x1080_60.00"
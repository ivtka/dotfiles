# Define environment variables
superset MANPAGER "sh -c 'col -bx | bat -l man -p'"

set -U fish_greeting

fish_add_path $HOME/.cargo/bin
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.deno/bin
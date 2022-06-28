# Define environmnet variables

superset EDITOR nvim
superset VISUAL nvim
superset MANPAGER 'nvim +Man!'

superset XDG_CONFIG_HOME $HOME/.config
superset XDG_CACHE_HOME $HOME/.cache
superset XDG_DATA_HOME $HOME/.local/share
superset XDG_DATA_DIRS /usr/local/share:/usr/share
superset XDG_CONFIG_DIRS /etc/xdg

# Enable vi mode
fish_vi_key_bindings

bind -k nul -M insert accept-autosuggestion
bind -k nul -M normal accept-autosuggestion

# Make yy in normal mode copy the entire line to clipboard
bind yy fish_clipboard_copy

fish_add_path $HOME/.local/bin
fish_add_path $HOME/.cargo/bin
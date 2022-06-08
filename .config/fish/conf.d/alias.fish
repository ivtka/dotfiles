# ls
if type -q exa
    alias ls="exa --icons --color-scale"
    alias ll="ls -lah"
end

alias la="ls -a"

# Package Manager

if grep -iq arch /etc/os-release
    alias install="paru -S --needed --removemake"
    alias show="paru -Si"
    alias search="paru -Ss"
    alias remove="paru -Rs"
    alias fsearch="paru -F"
    alias mirror="sudo pacman-mirrors -id"
    alias listgit="list | rg '\-git'"
end

if type -q topgrade
    alias upgrade="topgrade"
end

alias mkdir="mkdir -p"

alias rmdir="rmdir * 2 > /dev/null"

alias path="echo $PATH | tr ' ' '\n'"
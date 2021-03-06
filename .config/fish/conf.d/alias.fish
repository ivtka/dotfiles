# ================= EXA ALIAS BEGIN { ======================
# ==========================================================

if type -q exa
    alias ls 'exa --icons --color-scale'
end

alias ll 'ls -lah'
alias la 'ls -a'

if type -q exa
    alias lsg 'll --git'
    alias llsz 'll --sort=size'
    alias llacc 'll --sort=acc'
    alias llcr 'll --sort=cr'
    alias tree 'exa -aT --color=always --icons --ignore-glob=".git|node_modules"'
    alias l='exa -a | rg "^\."'
end

# =================== } EXA ALIAS END ======================
# ==========================================================



# ================ ARCH ALIAS BEGIN { ======================
# ==========================================================

if grep -q arch /etc/os-release
    alias pacman='sudo pacman'
    alias pacsyu='pacman -Syyu'
    
    alias install 'paru -S --needed --removemake'
    alias show 'paru -Si'
    alias search 'paru -Ss'
    alias remove 'paru -Rs'
    alias fsearch 'paru -F'
    alias cleanup 'sudo pacman -Rns $(pacman -Qtdq)'
    alias update='paru -Sy && paru -Qu'
end

alias upgrade topgrade

# ================== } ARCH ALIAS END ======================
# ==========================================================



# ================ GIT ALIAS BEGIN { ======================
# ==========================================================

alias ga 'git add'
alias gaa 'git add --all'
alias gau 'git add -update'
alias gac 'git add -A && git commit -v'
alias gwip 'git add -A && git rm $(git ls-files --deleted) 2> /dev/null && git commit --no-verify -m "--wip-- [skip ci]"'
alias gapa 'git add --patch'

alias gau 'git remote add upstream'

alias gb 'git branch'
alias gba 'git branch --all'
alias gbd 'git branch --delete'
alias gbdf 'git branch --delete --force'
alias gbnmr 'git branch --no-merged'
alias gbm 'git branch --move'
alias gbr 'git branch --remote'
alias gbu 'git branch --unset-upstream'
alias ggsup 'git branch --set-upstream-to origin/$(git_current_branch)'

alias gbs 'git bisect'
alias gbsb 'git bisect bad'
alias gbsg 'git bisect good'
alias gbsr 'git bisect reset'
alias gbss 'git bisect start'

alias gc 'git commit -v'
alias gc! 'git commit -v --amend'
alias gcn! 'git commit -v --no-edit --ammend'
alias gca 'git commit -v -a'
alias gca! 'git commit -v -a --amend'
alias gcan! 'git commit -v -a --no-edit --amend'
alias gcans! 'git commit -v -a -s --no-edit --amend'
alias gcam 'git commit -a -m'
alias gcsm 'git commit -s -m'
alias gcmsg 'git commit -m'
alias gcs 'git commit -S'

alias gcb 'git checkout -b'
alias gcm 'git checkout master'
alias gco 'git checkout'

alias gcl 'git clone --recursive'

alias gcp 'git cherry-pick'
alias gcpa 'git cherry-pick --abort'
alias gcpc 'git cherry-pick --continue'
alias gcps 'git cherry-pick -s'

alias gd 'git diff'
alias gdw 'git diff --word-diff'
alias gdt 'git diff-tree --no-commit-id --name-only -r'
alias gdct 'git describe --tags `git rev-list --tags --max-count 1`'
alias gdc 'git diff --cached'
alias gdcw 'git diff --cached --word-diff'

alias gf 'git fetch'
alias gfa 'git fetch --all --prune'
alias gfo 'git fetch origin'

alias ggpush 'git push origin $(git_current_branch)'
alias gpsup 'git push --set-upstream origin $(git_current_branch)'

alias ghh 'git help'

alias gignore 'git update-index --assume-unchanged'
alias gunignore 'git update-index --no-assume-unchanged'

alias gignored 'git ls-files -v | grep "^[[:lower:]]"'

alias gl 'git pull'
alias gup 'git pull --rebase'
alias gupv 'git pull --rebase --autostash'
alias gupav 'git pull --rebase --autostash -v'
alias glum 'git pull upstream master'
alias ggpull 'git pull origin $(git_current_branch)'
alias ggpur 'ggu'

alias glg 'git log --stat'
alias glgp 'git log --stat -p'
alias glgg 'git log --graph'
alias glgga 'git log --graph --decorate --all'
alias glgm 'git log --graph --max-count 10'
alias glo 'git log --oneline --decorate'
alias glol "git log --graph --pretty '%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola "git log --graph --pretty '%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias glog 'git log --oneline --decorate --graph'
alias gloga 'git log --oneline --decorate --graph --all'
alias gunwip 'git log -n 1 | grep -q -c "\-\-wip\-\-" && git reset HEAD~1'

alias gm 'git merge'
alias gmom 'git merge origin/master'
alias gmt 'git mergetool --no-prompt'
alias gmtvim 'git mergetool --no-prompt --tool "nvim -d"'
alias gmum 'git merge upstream/master'

alias gp 'git push'
alias gpd 'git push --dry-run'
alias gpoat 'git push origin --all && git push origin --tags'
alias gpu 'git push upstream'
alias gpu 'git push upstream'
alias gpv 'git push -v'

alias grb 'git rebase'
alias grba 'git rebase --abort'
alias grbc 'git rebase --continue'
alias grbi 'git rebase -i'
alias grbm 'git rebase master'
alias grbs 'git rebase master'

alias grh 'git reset HEAD'
alias grhh 'git reset HEAD --hard'
alias gru 'git reset --'

alias grt 'cd $(git rev-parse --show-toplevel || echo ".")'

alias gr 'git remote'
alias gra 'git remote add'
alias grup 'git remote update'
alias grmv 'git remote rename'
alias grrm 'git remote remove'
alias grset 'git remote set-url'
alias grv 'git remote -v'

alias gsi 'git submodule init'
alias gsu 'git submodule update'

alias gsps 'git show --pretty short --show-signature'

alias gsb 'git status -sb'
alias gss 'git status --short'
alias gst 'git status'

alias gsta 'git stash save'
alias gstaa 'git stash apply'
alias gstd 'git stash drop'
alias gstc 'git statsh clean'
alias gstl 'git stash list'
alias gstp 'git stash pop'
alias gsts 'git stash show --text'

alias gts 'git tag -s'
alias gtv 'git tag | sort -V'

alias gwch 'git whatchanged -p --abbrev-commit --pretty medium'

# ================== } GIT ALIAS END ======================
# ==========================================================

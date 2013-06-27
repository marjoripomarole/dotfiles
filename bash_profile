# For PostgreSQL
# Aliases
alias v=vim
alias gvim='mvim'
alias g='mvim'
alias 1='cd -'
alias 2='cd +2'
alias 3='cd +3'
alias 4='cd +4'
alias 5='cd +5'
alias 6='cd +6'
alias 7='cd +7'
alias 8='cd +8'
alias 9='cd +9'
alias _=sudo
alias afind='ack-grep -il'
alias ai='sudo apt-get install'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias d='dirs -v'
alias g=git
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdv='git diff -w "$@" | vim -R -'
alias ggpnp='git pull origin $(current_branch) && git push origin $(current_branch)'
alias ggpull='git pull origin $(current_branch)'
alias ggpush='git push origin $(current_branch)'
alias gist='nocorrect gist'
alias gl='git pull'
alias glg='git log --stat --max-count=5'
alias gp='git push'
alias gst='git status'
alias gup='git fetch && git rebase'
alias glol='git log --oneline --graph --all --decorate' 
alias ls='ls -alsh'
alias ll='ls -l'
alias dash='cd ~/bitcoin_anonymity/src/dashboard'

alias grep='grep --color=auto'
alias unigrep='grep -P "[^\x00-\x7F]"'

alias nuke='pkill -u $(whoami)'

#Colorize the Terminal
export CLICOLOR=1;

alias ssh='TERM=xterm ssh'

# Created by Marjori Pomarole

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="tonotdo"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git python vi-mode)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

setopt auto_cd           # Change Directory by typing a directory name on its own
setopt extended_glob     # Turn on the more powerful pattern matching features
setopt append_history    # All shells terminated have a chance to save to ~/.history
setopt share_history     # Commands saved to ~/.history so they can be shared across shells
setopt hist_ignore_dups  # Ignore consecutive duplicates
setopt hist_find_no_dups # Ignore duplicates when searching back
setopt numericglobsort   # any range in pattern <-> is sorted
unsetopt correct_all

bindkey "^R" history-incremental-search-backward

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.history

fpath+=~/.zfunc

autoload -Uz compinit && compinit
autoload -U bashcompinit
bashcompinit

# Aliases

alias ll='ls -alsh'
alias grep='grep --color=auto'
alias nuke='pkill -u $(whoami)'
alias myip='ifconfig | grep inet'
alias du='du -ch'
alias untar='tar xvf'
alias pid='ps -el | head -1 && ps -el | grep $1'
alias bh='cd ~/bh'
alias k='kubectl'
alias g=git
alias gst='git status -b --short'
alias gd='git diff'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git add --all; git commit --all -v -m'
alias gco='git checkout'
alias gcount='git shortlog -sn'
alias gcp='git cherry-pick'
alias gdv='git diff -w "$@" | vim -R -'
alias gl='git pull'
alias glg='git log --stat --max-count=5'
alias gp='git push'
alias gup='git fetch && git rebase'
alias glol='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph --date=short'
alias pip="pip3"
alias python="python3"

# brew libraries
export LDFLAGS="-L $(brew --prefix openssl)/lib"
export CFLAGS="-I $(brew --prefix openssl)/include"

export USER=marjoripomarole
export GITHUBUSERNAME=marjoripomarole
export EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim

# poetry
export PATH="/Users/marjoripomarole/.local/bin:$PATH"

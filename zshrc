# Created by Marjori Pomarole

# Path to your oh-my-zsh installation.
export ZSH=/Users/marjori.pomarole/.oh-my-zsh

ZSH_THEME="robbyrussell"
export UPDATE_ZSH_DAYS=13
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(
  git python vi-mode
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

setopt auto_cd           # Change Directory by typing a directory name on its own
setopt extended_glob     # Turn on the more powerful pattern matching features
setopt append_history    # All shells terminated have a chance to save to ~/.history
setopt share_history     # Commands saved to ~/.history so they can be shared across shells
setopt hist_ignore_dups  # Ignore consecutive duplicates
setopt hist_find_no_dups # Ignore duplicates when searching back
setopt correct           # autocorrect commands after Return
setopt numericglobsort   # any range in pattern <-> is sorted

bindkey "^R" history-incremental-search-backward

HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.history

# Load the function-based completion systems
autoload -U compinit
compinit

autoload -U promptinit
promptinit

# Aliases
alias tunnel='localtunnel -k ~/.ssh/id_rsa.pub 9000'
alias v='vim'
alias _=sudo
alias afind='ack-grep -il'
alias ai='sudo apt-get install'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias d='dirs -v'
alias ll='ls -alsh'
alias grep='grep --color=auto'
alias unigrep='grep -P "[^\x00-\x7F]"'
alias nuke='pkill -u $(whoami)'
alias sb='source ~/.bash_profile'
alias b='vim ~/.bash_profile'
alias up='brew update; brew upgrade; brew doctor'
alias upclean='brew prune; brew cleanup; brew doctor'
alias myip='ifconfig | grep inet'
alias du='du -ch'
alias untar='tar xvf'
alias pid='ps -el | head -1 && ps -el | grep $1'
alias k='kubectl'
alias bh='cd ~/bh'
alias all='ls | xargs -P10 -I{} git -C {} pull'
alias python='python3'

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
alias glol='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph --all --date=short' 

export GITHUBUSERNAME=mpomarole
export EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim

# virtualenv
export WORKON_HOME=~/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='-p python3.6'
source /usr/local/bin/virtualenvwrapper.sh

source <(kubectl completion zsh)

# Babylon
export SLACK_SHIPCAT_HOOK_URL=''
export SLACK_SHIPCAT_CHANNEL='#kubernets'

export GITHUB_USER=mpomarole
export GITHUB_PASSWORD=EqCRfgYDGtetf3NZAiQbaGdx

export VAULT_ADDR=https://vault.babylontech.co.uk:8200
export VAULT_TOKEN=94d801a9-16ae-9966-266e-0adf58642b16
# export VAULT_TOKEN=8f1875b2-ce50-928f-6cae-ec7d8d2afd5b  new vault token

# root account (dev + staging)
export AWS_ACCESS_KEY_ID=AKIAJRYLQL5OSXHVHFMA
export AWS_SECRET_ACCESS_KEY=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

# `development` account (dev-uk, dev-global, qa, preprod)
#export AWS_ACCESS_KEY_ID=AKIAJSZRIO7RDCCJPLYQ
#export AWS_SECRET_ACCESS_KEY=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

export PATH="/usr/local/sbin:$PATH"

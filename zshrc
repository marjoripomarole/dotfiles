# Created by Marjori Pomarole

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="tonotdo"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git python vi-mode pyenv)

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

# Load the function-based completion systems
autoload -U compinit
compinit

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
alias pip='pip3'
alias k='kubectl'
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
alias glol='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph --date=short'

# For Rosetta apps TEMPORARY
alias brew86='arch -x86_64 /usr/local/Homebrew/bin/brew'
alias brewr='arch -x86_64 /usr/local/bin/brew $@'

arch_name="$(uname -m)"

if [ "${arch_name}" = "x86_64" ]; then
   echo "Running in x86 mode"
   eval $(/usr/local/bin/brew shellenv)
elif [ "${arch_name}" = "arm64" ]; then
   echo "Running in Arm mode"
   eval $(/opt/homebrew/bin/brew shellenv)
   export ARCHFLAGS="-arch arm64"
else
   echo "Unexpected uname -m result ${arch_name}"
fi

# brew libraries
export LDFLAGS="-L $(brew --prefix openssl)/lib"
export CFLAGS="-I $(brew --prefix openssl)/include"

export GITHUBUSERNAME=mpomarole
export EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim

export DAGSTER_HOME=~/dagster_home

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/shims/python"

eval "$(pyenv init --path)"
eval "$(pyenv virtualenv-init -)"

eval "$(direnv hook zsh)"

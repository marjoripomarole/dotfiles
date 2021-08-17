# Created by Marjori Pomarole

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="tonotdo"
export UPDATE_ZSH_DAYS=13
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git python vi-mode)

source $ZSH/oh-my-zsh.sh

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# PATH
export PATH="$HOME/.poetry/bin:$PATH"
export PATH="$HOME/istio-1.10.0/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/usr/local/bin:/usr/bin:/usr/local/sbin:$PATH"

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

fpath+=~/.zfunc

# Load the function-based completion systems
autoload -U compinit
compinit

# Aliases

alias ll='ls -alsh'
# colorls if on mac
if [ "$(uname 2> /dev/null)" != "Linux" ]; then
      export PATH="$HOME/.gem/bin:$PATH"
      export GEM_HOME="$HOME/.gem"
      source $(dirname $(gem which colorls))/tab_complete.sh
      alias ls='colorls'
      alias ll='colorls -lA --sd'
fi

alias grep='grep --color=auto'
alias nuke='pkill -u $(whoami)'
alias myip='ifconfig | grep inet'
alias du='du -ch'
alias untar='tar xvf'
alias pid='ps -el | head -1 && ps -el | grep $1'
alias bh='cd ~/bh'
alias python='python3'
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

export GITHUBUSERNAME=mpomarole
export EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim

function movToGif() {
    if [ -n "$1" ]
    then
        ffmpeg -i "$1" -s 600x400 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > out.gif
    else
        cat "Needs to pass .mov file as argument."
    fi
}

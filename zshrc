# Made by Marjori Pomarole

setopt auto_cd        # Change Directory by typing a directory name on its own
setopt extended_glob  # Turn on the more powerful pattern matching features

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

# Aliases
alias sml='rlwrap sml'
alias tunnel='localtunnel -k ~/.ssh/id_rsa.pub 9000'
alias v='vim'
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
alias ll='ls -alsh'
alias grep='grep --color=auto'
alias unigrep='grep -P "[^\x00-\x7F]"'
alias nuke='pkill -u $(whoami)'
alias sb='source ~/.bash_profile'
alias b='vim ~/.bash_profile'
alias atadosenv='vim ~/.virtualenvs/atados/bin/activate'
alias celeryatados='celery -A atados_core worker --loglevel=info'
alias up='brew update && brew upgrade'
alias myip='ifconfig |grep inet'
alias du='du -ch'
alias untar='tar xvf'
alias pid='ps -el | head -1 && ps -el | grep $1'
alias prolog='swipl'

# Git land
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
alias gd='git diff'
alias gdv='git diff -w "$@" | vim -R -'
alias gl='git pull'
alias glg='git log --stat --max-count=5'
alias gp='git push'
alias gup='git fetch && git rebase'
alias glol='git log --pretty=format:"%h%x09%an%x09%ad%x09%s" --graph --all --date=short' 

# dir shortcuts
alias api='deactivate; workon atados; cd ~/projects/atados/api'
alias www=' deactivate; workon atados; cd ~/projects/atados/www'
alias dotfiles='cd ~/dotfiles'
alias Downloads='cd ~/Downloads'

# Colorize the Terminal
export CLICOLOR=1;

export EDITOR=vim
export GIT_EDITOR=vim
export VISUAL=vim

# Load the function-based completion systems
autoload -U compinit
compinit

export GITHUBUSERNAME=mpomarole

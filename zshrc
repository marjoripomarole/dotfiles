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

# Load the function-based completion systems
autoload -U compinit
compinit

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

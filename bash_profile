# Made by Marjori Pomarole

# Random Aliases
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
alias myip='ifconfig |grep inet'

# Git land
alias g=git
alias gst='git status -b --short'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gcam='git commit -v -a -m'
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
alias atados='cd ~/projects/atados'
alias dotfiles='cd ~/dotfiles'
alias Downloads='cd ~/Downloads'

# Colorize the Terminal
export CLICOLOR=1;

# As recommended by 'brew doctor', /usr/local/bin occurs before /usr/bin
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin

# http://apple.stackexchange.com/questions/55875/git-auto-complete-for-branches-at-the-command-line
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi 

# virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/projects
source /usr/local/bin/virtualenvwrapper.sh

export JAVA_HOME="$(/usr/libexec/java_home)"

export AWS_CREDENTIAL_FILE=$HOME/.elasticbeanstalk/aws_credential_file
export AWS_ELASTICACHE_HOME="/usr/local/Cellar/aws-elasticache/1.7.000/libexec"
export AWS_IAM_HOME="/usr/local/opt/aws-iam-tools/jars"
export AWS_RDS_HOME="/usr/local/Cellar/rds-command-line-tools/1.14.001/libexec" 
export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"

export EDITOR=vim
export GIT_EDITOR=vim
export PS1="\u@\h\w$ "
export VISUAL=vim

# Open a man page in Preview:
pman () {
    man -t "${1}" | open -f -a /Applications/Preview.app
}

# Quit an OS X application from the command line
quit () {
    for app in $*; do
        osascript -e 'quit app "'$app'"'
    done
}

# Relaunch an app
relaunch () {
    for app in $*; do
        osascript -e 'quit app "'$app'"';
        sleep 2;
        open -a $app
    done
}

# Uninstall an app with AppZapper from the command line:
zap () {
    open -a AppZapper /Applications/"${1}".app
}

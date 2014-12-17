# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#Detect OS
if [[ `uname` == "Darwin" ]]
    then
        export OSX=1
    else
        export OSX=0
fi

# Set name of the theme to load.
#ZSH_THEME="robbyrussell"
ZSH_THEME="eastwoodcustom"

plugins=(git)

source $ZSH/oh-my-zsh.sh

if [[ -f ~/.private-settings ]]
    then
        #go proxy settings
        source .private-settings
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=/home/sites/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Go Format - Format code
alias gof='godep go fmt ./...'

#Go Build - Format, Build and Install
alias gob="godep go fmt ./... && godep go install -race ./..."

#Go Build All - Force rebuild and install - useful if a dependency has changed but your program has not
alias goba="godep go fmt ./... && godep go install -a -race ./..."

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias grep='grep -rn --color'

#OS specific aliases
if [[ "$OSX" == "1" ]]
    then
        alias ls='ls -lahG'
    else
        alias ls='ls -lah --color=auto'
fi

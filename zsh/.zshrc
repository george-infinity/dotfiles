# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
#ZSH_THEME="robbyrussell"
ZSH_THEME="eastwood"

plugins=(git)

source $ZSH/oh-my-zsh.sh
#go proxy settings
source .private-settings

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=/home/sites/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias go='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 go'
alias godep='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 godep'

#Go Format - Format code
alias gof='godep go fmt ./...'

#Go Build - Format, Build and Install
alias gob="godep go fmt ./... && godep go install -race ./..."

#Go Build All - Force rebuild and install - useful if a dependency has changed but your program has not
alias goba="godep go fmt ./... && godep go install -a -race ./..."

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias ls='ls -lah --color=auto'
alias grep='grep -rn --color'

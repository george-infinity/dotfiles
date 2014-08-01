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
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias ls='ls -lah --color=auto'
alias grep='grep -rn --color'

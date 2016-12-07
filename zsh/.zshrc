# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

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

unsetopt AUTO_CD

# Go vars
if [[ `uname -a` == "Linux gael6"* ]]
    then
        export GOPATH=/home/sites/go
    else
        export GOPATH=$HOME/go
fi

export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/
export DOTFILES=$HOME/dotfiles/

# GPG vars
export GPG_TTY=$(tty)
$DOTFILES/bin/gpg-agent-start.sh

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias gt='git tag | sort -V | tail'

#Go Format - Format code
alias gof='godep go fmt ./...'

alias gob='go install -race -v $(go list ./... | /bin/grep -v /vendor/) && go fmt ./...'
alias goba='go install -race -v -a $(go list ./... | /bin/grep -v /vendor/) && go fmt ./...'

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias grep='grep -n --color'

#OS specific aliases
if [[ `uname` == "Darwin" ]]
    then
        alias ls='ls -lahG'
        alias spotify="osascript ~/dotfiles/osx/SpotifyControl.scpt" #https://github.com/dronir/SpotifyControl
    else
        alias ls='ls -lah --color=auto'
fi

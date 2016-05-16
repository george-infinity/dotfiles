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

unsetopt AUTO_CD

export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=/home/sites/go
export GOSRC=/home/sites/go/src/github.com/
export GOROOT=/usr/local/go
export PATH=$PATH:$GOPATH/bin
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:/usr/local/lib/pkgconfig/
export GPG_TTY=$(tty)

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

#Go Format - Format code
alias gof='godep go fmt ./...'

alias gob='go install -race -v $(go list ./... | /bin/grep -v /vendor/) && go fmt ./...'
alias goba='go install -race -v -a $(go list ./... | /bin/grep -v /vendor/) && go fmt ./...'

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias grep='grep -n --color'

#OS specific aliases
if [[ "$OSX" == "1" ]]
    then
        alias ls='ls -lahG'
        alias spotify="osascript ~/dotfiles/osx/SpotifyControl.scpt" #https://github.com/dronir/SpotifyControl
    else
        alias ls='ls -lah --color=auto'
fi

# .bashrc

# Custom aliases
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias ls='ls -lah --color=auto'
alias grep='grep -rn --color'

# Git auto-completion
source ~/.git-completion

export GOPATH=/home/sites/go
export PATH=$PATH:$GOPATH/bin

# User specific environment and startup programs
PATH=$PATH:$HOME/bin

alias go='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 go'
alias godep='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 godep'

function current_uname {
    uname -a | cut -d ' ' -f 2 | cut -d '.' -f 1
}

function current_branch {
    local BRANCH=$(git symbolic-ref HEAD 2>/dev/null | cut -d '/' -f 3)
    if [ ! -z $BRANCH ]
    then
        echo "[$BRANCH]"
    fi
}

export PS1='\e[0;32m$(current_branch)\e[m\e[0;36m[$(current_uname):$(pwd)]\e[m$ '
export PS2='  > '

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

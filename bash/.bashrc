# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Custom aliases

alias gl='git log --oneline -n 20'
alias tail='grc tail'
alias ls='ls -lah --color=auto'
alias grep='grep -rn --color'

# Git auto-completion
source ~/.git-completion

export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

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

function start_colour {
    #local CS="\e["
    #$CS="$($CS)0;32"
    #$CS="$($CS)m"

    #echo $CS
    echo "\e[0;32m"
}

function end_colour {
    echo "\e[m"
}

export PS1='\e[0;32m$(current_branch)\e[m\e[0;36m[$(current_uname):$(pwd)]\e[m$ '
export PS2='  > '

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

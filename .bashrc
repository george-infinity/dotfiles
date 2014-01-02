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

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

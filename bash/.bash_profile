# .bash_profile

# Puppet will overwrite the default shell specified in /etc/passwd
zsh

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export GOPATH=/home/sites/go
export GOROOT=/usr/local/go

export PATH

alias go='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 go'
alias godep='http_proxy=proxyout.infinity.local:8080 https_proxy=proxyout.infinity.local:8080 godep'

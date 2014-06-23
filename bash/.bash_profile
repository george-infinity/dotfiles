# .bash_profile

# Puppet will overwrite the default shell specified in /etc/passwd
zsh

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

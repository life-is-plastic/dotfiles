if [ -f ~/.bashrc ]; then
	. ~/.bashrc
	exit 0
fi

export PS1='\u@\h:\w$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

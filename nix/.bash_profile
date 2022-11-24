if [ -f ~/.bashrc ]; then
	. ~/.bashrc
	return
fi

export PS1='\u@\h:\w$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
	exit 0
fi

export PS1='\u@\h:\W$ '

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

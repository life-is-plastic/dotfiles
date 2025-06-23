HISTSIZE=5000
HISTFILESIZE=20000
HISTIGNORE='exit:history:logout:pwd'

export PATH="$(echo ~)/bin:$PATH"
export PROMPT="%F{green}%n@$(scutil --get ComputerName)%F{reset_color}:%F{blue}%d%F{reset_color}$ "

if [ -f ~/.zsh_aliases ]; then
	. ~/.zsh_aliases
fi


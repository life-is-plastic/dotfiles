alias reload='. ~/.bash_profile'
alias profile='vim ~/.bash_profile'
alias aliases='vim ~/.bash_aliases'

alias gitconfig='vim ~/.gitconfig'
alias vimrc='vim ~/.vimrc'

alias rm='rm -i'
alias g='git'
alias p='python3'

did() {
	local fp=~/did.txt
	if (( $# == 0 )); then
		vim $fp
	else
		echo "[$(date +%F)] $*" | tee -a $fp
	fi
}

if [[ $(uname -s) == 'Darwin' ]]; then
	alias ls='ls -Gl'

	coffee() {
		local fn=coffee.applescript
		local ps_result=$(pgrep -lf $fn)
		if [[ -z "$ps_result" ]]; then
			osascript ~/$fn &
			disown
		else
			echo $ps_result
		fi
	}
fi

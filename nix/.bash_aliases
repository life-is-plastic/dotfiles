alias reload='. ~/.bash_profile'
alias profile='vi ~/.bash_profile'
alias aliases='vi ~/.bash_aliases'

alias ls='ls -l --group-directories-first --color=auto'
alias rm='rm -i'

alias g='git'
alias gitconfig='vi ~/.gitconfig'

rc() {
	vi ~/.${1}rc
}

did() {
	local fp=~/did.txt
	if (( $# == 0 )); then
		cat $fp
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

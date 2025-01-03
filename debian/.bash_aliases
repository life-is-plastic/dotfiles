alias aliases='vi ~/.bash_aliases'
alias update='sudo apt update && sudo apt upgrade'
alias reload='exec bash'

alias ls='ls -l --group-directories-first --color=auto'
alias rm='rm -i'

alias g='git'
alias gitconfig='git config --global --edit'

rc() {
	vi ~/.${1}rc
}

dev() {
	cd ~/dev/${1}
}

did() {
	local fp=~/did.txt
	if [ $# -eq 0 ]; then
		cat $fp
	else
		echo "[$(date '+%Y-%m')] $*" | tee -a $fp
	fi
}

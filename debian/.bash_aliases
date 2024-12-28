alias aliases='vi ~/.bash_aliases'
alias update='sudo apt update && sudo apt upgrade'
alias reload='exec bash'

alias ls='ls -l --group-directories-first --color=auto'
alias rm='rm -i'

alias g='git'
alias gitconfig='vi ~/.gitconfig'

rc() {
	vi ~/.${1}rc
}

dev() {
	cd ~/dev/${1}
}

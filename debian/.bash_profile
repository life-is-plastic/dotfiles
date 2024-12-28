. ~/.profile

HISTSIZE=5000
HISTFILESIZE=20000
HISTIGNORE='exit:history:logout:pwd'

# Ensure ssh-agent runs at start. Adapted from
# https://docs.github.com/en/authentication/connecting-to-github-with-ssh/working-with-ssh-key-passphrases#auto-launching-ssh-agent-on-git-for-windows

SSH_AGENT_ENV=~/.ssh/agent.env

if [ -f "$SSH_AGENT_ENV" ]; then
	. "$SSH_AGENT_ENV" > /dev/null
fi

SSH_AGENT_RUN_STATE=$(ssh-add -l &> /dev/null; echo $?)

if [ ! "$SSH_AUTH_SOCK" ] || [ "$SSH_AGENT_RUN_STATE" = 2 ]; then
	umask 077
	ssh-agent > "$SSH_AGENT_ENV"
	. "$SSH_AGENT_ENV" > /dev/null
fi

unset SSH_AGENT_ENV
unset SSH_AGENT_RUN_STATE

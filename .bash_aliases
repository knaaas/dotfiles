alias ..='cd ..'
alias ...='cd ../..'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias p='cd ~/projects'

if [ $(uname -s) = 'Darwin' ]; then
	alias c='clear'
	alias l='ls -F -G'
	alias ls='ls -F -G'
	alias ll='ls -lh -F -G -h'
	alias la='ls -lh -A -F -G -h'
fi

if [ $(uname -s) = 'Linux' ]; then
	alias c='clear'
	alias l='ls -CF --color=auto'
	alias ls='ls -CF --color=auto'
	alias ll='ls -lh -F --color=auto'
	alias la='ls -lh -A -F --color=auto'
fi

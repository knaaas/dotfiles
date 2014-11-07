PATH="$PATH:$HOME/bin"

set -o vi

alias -- -="cd -"
alias ..="cd .."
alias ...="cd ../.."
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias p="cd ~/projects"

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

if [ $(uname -s) = 'Darwin' ]; then
	alias c='clear'
	alias l='ls -F -G'
	alias ls='ls -F -G'
	alias ll='ls -l -F -G'
	alias la='ls -l -A -F -G'

	alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
fi

if [ $(uname -s) = 'Linux' ]; then
	alias c='clear'
	alias l='ls -CF --color=auto'
	alias ls='ls -CF --color=auto'
	alias ll='ls -l -F --color=auto'
	alias la='ls -l -A -F --color=auto'
fi


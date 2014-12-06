alias -- -='cd -r'
alias ..='cd ..'
alias ...='cd ../..'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias p='cd ~/projects'

if [ $(uname -s) = 'Darwin' ]; then
	alias c='clear'
	alias l='ls -F -G'
	alias ls='ls -F -G'
	alias ll='ls -l -F -G'
	alias la='ls -l -A -F -G'

	alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
	alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
fi

if [ $(uname -s) = 'Linux' ]; then
	alias vim='vim.nox'
	alias c='clear'
	alias l='ls -CF --color=auto'
	alias ls='ls -CF --color=auto'
	alias ll='ls -l -F --color=auto'
	alias la='ls -l -A -F --color=auto'
fi

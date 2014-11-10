PATH="$PATH:$HOME/bin"
PS1='[\u@\h \W]\$ '

bind '"jj": vi-movement-mode'     #after 'set keymap vi-insert'?

#Color-enabled man pages
man() {
	env LESS_TERMCAP_mb=$'\E[01;31m' \
	LESS_TERMCAP_md=$'\E[01;38;5;74m' \
	LESS_TERMCAP_me=$'\E[0m' \
	ESS_TERMCAP_se=$'\E[0m' \
	LESS_TERMCAP_so=$'\E[38;5;246m' \
	LESS_TERMCAP_ue=$'\E[0m' \
	LESS_TERMCAP_us=$'\E[04;38;5;146m' \
	man "$@"
}

# Make vim the default editor
export EDITOR="vim";
# Always enable colored `grep` output
export GREP_OPTIONS="--color=auto";

shopt -s cdspell;
#set -o vi

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
	alias vim='vim.nox'
	alias c='clear'
	alias l='ls -CF --color=auto'
	alias ls='ls -CF --color=auto'
	alias ll='ls -l -F --color=auto'
	alias la='ls -l -A -F --color=auto'
fi


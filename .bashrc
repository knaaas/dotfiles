PATH="$PATH:$HOME/bin"
PS1='[\u@\h \W]\$ '

bind '"jj": vi-movement-mode'   # after 'set keymap vi-insert'?

HISTCONTROL=ignoreboth		# Don't put duplicate lines or lines starting with space in the history.
shopt -s checkwinsize

export EDITOR="vim"; 		# Make vim the default editor
export GREP_OPTIONS="--color=auto" # Always enable colored `grep` output
shopt -s cdspell;
#set -o vi


if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

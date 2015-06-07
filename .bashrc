# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

PATH="$PATH:$HOME/bin"
PS1='\[\e[0;32m\][\u@\h\[\e[m\] \w\[\e[0;32m\]]$\[\e[m\] '

HISTCONTROL=ignoreboth		# Don't put duplicate lines or lines starting with space in the history.
shopt -s checkwinsize

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

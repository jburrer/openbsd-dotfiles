[ -z "$TMUX"  ] && { tmux attach || exec tmux new-session && exit; }

export EDITOR='vim'

set -o vi

alias ls='ls -1'
alias la='ls -1A'
alias config='git --git-dir=$HOME/.cfg/ --work-tree $HOME'

_PS1_CLEAR='\[\033[0m\]'
_PS1_BLUE='\[\033[34m\]'
case "$(id -u)" in
	0) _PS1_COLOR='\[\033[1;31m\]';;
	*) _PS1_COLOR='\[\033[32m\]';;
esac
PS1='$_PS1_BLUE\w$_PS1_CLEAR:$_PS1_COLOR\$$_PS1_CLEAR '

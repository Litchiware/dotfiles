export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="$PATH:~/dotfiles/bin"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
alias vim='nvim'
function ssht () { /usr/bin/ssh -t $@ "tmux attach || tmux new"; }

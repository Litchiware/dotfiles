export PS1='\[\e[0;33m\]\u\[\e[0m\]@\[\e[0;32m\]\h\[\e[0m\]:\[\e[0;34m\]\w\[\e[0m\]\$ '
if [ -f ~/.profile_extension ]; then
  . ~/.profile_extension
fi
alias vim='nvim'
alias ls='ls --color'
alias tmux="TERM=screen-256color-bce tmux"

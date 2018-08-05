PROMPT="╭───╼ %m %~
╰╼$ "
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

unsetopt BEEP

#aliases
alias zshrc="nvim ~/.zshrc"
alias vim="nvim"
alias nvimrc="nvim ~/.config/nvim/init.vim"
alias sourcez="source ~/.zshrc"

#path additions
PATH="~/dotfiles/scripts/:$PATH"
export PATH

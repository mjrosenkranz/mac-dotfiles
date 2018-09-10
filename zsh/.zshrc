PROMPT="╭───╼ %m %~
╰╼$ "
unset LSCOLORS
export CLICOLOR=1
export CLICOLOR_FORCE=1

CASE_SENSITIVE="false"

unsetopt BEEP

#aliases
alias zshrc="nvim $HOME/.zshrc"
alias vim="nvim"
alias nvimrc="nvim $HOME/.config/nvim/init.vim"
alias sourcez="source $HOME/.zshrc"
alias dots="cd $HOME/dotfiles/"
alias snips=" cd $HOME/.local/share/nvim/site/autoload/vim-snippets/snippets"

#path additions
PATH="$HOME/dotfiles/scripts/:$PATH"
export PATH
export EDITOR=$(which nvim)

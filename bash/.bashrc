c1="\e[0;37m"
c2="\e[0;36m"
c3="\e[0;32m"
c4="\e[0;35m"

export PS1="\[$c4\]\u@\h \[$c3\]\w\n\[$c4\]$ \[$c1\]"

export PATH="/usr/local/bin:/Users/morgan/mac-dotfiles/scripts/:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$PATH:/usr/local/bin/python3"
export MANPATH=/opt/local/share/man:$MANPATH
export PATH=/opt/pkg/bin:/opt/pkg/sbin:${PATH}
export PATH=$HOME/.cargo/bin:${PATH}
export PATH="$PATH:$HOME/data/pkgbuild/scripts"

# aliases
alias sourceb="source $HOME/.bashrc"
alias bashrc="nvim $HOME/.bashrc"
alias vimrc="nvim $HOME/mac-dotfiles/nvim/.config/nvim/init.vim"
alias dots="cd $HOME/mac-dotfiles"
alias scripts="cd $HOME/mac-dotfiles/scripts"
alias q="exit"
alias ext="cd /Volumes/EMPTY"
alias yt="youtube-dl"


#other settings
export EDITOR=nvim
#shopt -s autocd
shopt -s cdspell

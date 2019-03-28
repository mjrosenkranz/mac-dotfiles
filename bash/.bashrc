c1="$(tput setaf 5)"
c2="$(tput setaf 6)"
c3="$(tput setaf 2)"


export PS1=$(echo -e "$c1\u@\h $c3\w\n$c4\ufb0c $c2")

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
alias yt="youtube-dl -o '%(title)s.%(ext)s' -f mp4"


#other settings
export EDITOR=nvim
#shopt -s autocd
shopt -s cdspell

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

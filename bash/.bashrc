c1="\e[0;37m"
c2="\e[0;36m"
c3="\e[0;32m"
c4="\e[0;35m"

export PS1="\[$c4\]\u@\h \[$c3\]\w\n\[$c4\]$ \[$c1\]"

export PATH="/usr/local/bin:/Users/morgan/dotfiles/scripts/:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH="$PATH:/usr/local/bin/python3"
export MANPATH=/opt/local/share/man:$MANPATH
export PATH=/opt/pkg/bin:/opt/pkg/sbin:${PATH}
export PATH=$HOME/.cargo/bin:${PATH}
export PATH="$PATH:$HOME/data/pkgbuild/scripts"
export TERM=xterm
export URXVT_PERL_LIB="$HOME/.urxvt/ext"

# aliases
alias kk="killall"
alias sourceb="source $HOME/.bashrc"
alias bashrc="nvim $HOME/.bashrc"
alias vimrc="nvim $HOME/dotfiles/nvim/init.vim"
alias vim="nvim"
alias svim="sudo nvim"
alias snvim="sudo nvim"
alias dots="cd $HOME/dotfiles"
alias scripts="cd $HOME/dotfiles/scripts"
alias q="exit"
alias racket="/Applications/Racket\ v7.1/bin/racket"
alias raco="/Applications/Racket\ v7.1/bin/raco"
alias merge="xrdb merge $HOME/.Xresources"
alias xres="nvim $HOME/.Xresources"
alias sxhkdrc="nvim $HOME/.config/sxhkd/sxhkdrc"
alias bspwmrc="nvim $HOME/.config/bspwm/bspwmrc"
alias ext="cd /Volumes/EMPTY"
alias yt="youtube-dl"
alias acl2s="/opt/eclipse/eclipse"

# colors
export GREP_OPTIONS=' --color=auto'

#other settings
export EDITOR=nvim
#shopt -s autocd
shopt -s cdspell
#if [ -f /etc/bash_completion ]; then
# . /etc/bash_completion
#fi

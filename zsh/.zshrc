source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme kolo

# Tell antigen that you're done.
antigen apply

alias pbcopy="tee >(xclip -i -sel c -f | xclip -i -sel p)"
alias s="ls --color=auto"
alias c..="cd .. && ls --color=auto"
alias dc="date && cal"
alias s-a="ls -a --color=auto"

export EDITOR=vim

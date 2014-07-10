#!/usr/bin/bash
# If you have a Development folder, then add the following:
#
# . ~/Development/dot_files/bash_profile
#
# mkdir ~/Development
# git clone https://github.com/rupa/z.git
# cd ~/Development
# brew install git bash-completion


########################################
# Better command prompt
########################################
symbols=("☺" "☀" "☁" "★" "☆" "☯" "☏" "♕" "☑" "☒" "✓" "✗" "♣" "♤" "♥" "♦" "♧" "►" "☞" "☛" "☣")
RANDOM=$$$(date +%s)
selected_symbol=${symbols[$RANDOM % ${#symbols[@]} ]}

export PS1="\[\033[36m\]\u:\[\033[33;1m\]\w\[\033[m\]$selected_symbol "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

########################################
# z - for jumping around
########################################
. ~/Development/z/z.sh

########################################
# bash-completion
########################################
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

########################################
# Git aliases
########################################
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gap='git add --patch'

alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

########################################
# Something for brew and my subl
########################################
export PATH=/usr/local/bin:$PATH

########################################
# sublimetext is my editor of choice
########################################
if [ -f ~/bin/subl ]; then
  export EDITOR='subl -w'
fi


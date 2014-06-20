#!/usr/bin/bash
# If you have a Development folder, then add the following:
#
# if [ -f ~/.bash_aliases ]; then
# . ~/Development/dot_files/bash_profile
# fi

# z - for jumping around
. ~/Development/z/z.sh

# Git aliases
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gap='git add --patch'

alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

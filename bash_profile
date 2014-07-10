#!/usr/bin/bash
# If you have a Development folder, then add the following:
#
# . ~/Development/dot_files/bash_profile

#########################
# Better command prompt
#########################
export PS1="\u:\w$ "

#########################
# z - for jumping around
#########################
. ~/Development/z/z.sh

#########################
# Git aliases
#########################
alias gs='git status'
alias gd='git diff'
alias gl='git log'
alias gap='git add --patch'

alias gb='git branch'
alias gco='git checkout'
alias gcb='git checkout -b'

#!/usr/bin/bash
# If you have a Development folder, then add the following:
#
# . ~/Development/dot_files/bash_profile

########################################
# Better command prompt
########################################
export PS1="\[\033[36m\]\u:\[\033[33;1m\]\w\[\033[m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls='ls -GFh'

########################################
# z - for jumping around
########################################
. ~/Development/z/z.sh

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
# Prepend /usr/local/bin to make brew happy
########################################
export PATH=/usr/local/bin:$PATH

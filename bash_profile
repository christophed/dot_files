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

########################################
# rails shortcuts
########################################
alias be='bundle exec'
alias bees='be rspec'


########################################
# git branch
########################################
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

function check_git_status() {
  if [[ -n $(git diff 2> /dev/null) ]]; then
      echo -n "*"
  fi

  if [[ -n $(git diff --cached 2> /dev/null) ]]; then
      echo -n "+"
  fi
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u$NO_COLOR:\w$YELLOW\$(parse_git_branch)\$(check_git_status)$NO_COLOR "

########################################
# Git bash completion
########################################
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi


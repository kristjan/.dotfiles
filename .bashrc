stty stop ""

export EDITOR=vim
export HISTCONTROL=ignorespace

set -o vi

HELPERS="
  Dropbox/.env
  .aliases
  .functions
  .nvm/nvm.sh
"

for helper in $HELPERS; do
  if [ -f $HOME/$helper ]; then
    . $HOME/$helper
  fi
done

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
  PS1='\W$(__git_ps1 "(%s)")\$ '
fi

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

if [ `type -t __git_complete`"" == "function" ]; then
  __git_complete g __git_main
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

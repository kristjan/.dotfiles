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

set -o vi

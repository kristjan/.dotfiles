HELPERS="
  .aliases
  .functions
  .nvm/nvm.sh
"

for helper in $HELPERS; do
  if [ -f $HOME/$helper ]; then
    . $HOME/$helper
  fi
done

if [ -f ~/bin/git-completion.bash ]; then
  . ~/bin/git-completion.bash
  PS1='\W$(__git_ps1 "(%s)")\$ '
fi

if [ -f `brew --prefix`/etc/autojump ]; then
  . `brew --prefix`/etc/autojump
fi

set -o vi

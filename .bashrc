HELPERS="
  .aliases
  .functions
  .nvm/nvm.sh
  src/autojump/autojump.bash
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

set -o vi

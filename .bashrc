stty stop ""

export EDITOR=vim
export HISTCONTROL=ignorespace
export JAVAHOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export AWS_CREDENTIAL_FILE=~/.aws.cfg

set -o vi

HELPERS="
  Dropbox/.env
  .aliases
  .functions
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

if [ -f `brew --prefix`/etc/autojump.bash ]; then
  . `brew --prefix`/etc/autojump.bash
fi

if [ `type -t __git_complete`"" == "function" ]; then
  __git_complete g __git_main
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# added by travis gem
[ -f /Users/kristjan/.travis/travis.sh ] && source /Users/kristjan/.travis/travis.sh

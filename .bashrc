# Run each time you open a terminal, not just once at login

stty stop ""

export EDITOR=vim
export HISTCONTROL=ignorespace
export JAVAHOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home
export AWS_CREDENTIAL_FILE=~/.aws.cfg
export GOPATH=$HOME/src/go

export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1

BREW_PREFIX=$(brew --prefix)

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

if [ -f $BREW_PREFIX/etc/bash_completion ]; then
  . $BREW_PREFIX/etc/bash_completion
  PS1='\W$(__git_ps1 "(%s)")\$ '
fi

if [ -f $BREW_PREFIX/etc/autojump.sh ]; then
  . $BREW_PREFIX/etc/autojump.sh
fi

if [ `type -t __git_complete`"" == "function" ]; then
  __git_complete g __git_main
fi

# added by travis gem
[ -f /Users/kristjan/.travis/travis.sh ] && source /Users/kristjan/.travis/travis.sh

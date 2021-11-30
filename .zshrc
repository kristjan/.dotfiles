set -o vi

setopt interactivecomments # Turn on # as a comment character

. ~/.zaliases

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(frum init)"

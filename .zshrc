set -o vi

setopt interactivecomments # Turn on # as a comment character

setopt extendedhistory # Keep timestamps
setopt appendhistory # Otherwise a shell overwrites the file as it exits
setopt histignoredups # Don't store duplicate commands
setopt histreduceblanks # Don't store blank lines

setopt correct
setopt correctall

. ~/.zaliases

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(frum init)"

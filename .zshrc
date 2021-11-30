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

# %(?.%F{green}√.%F{red}?%?)%f - Last exit code, or √ if success
# %B%F{240}%~%f%b - Gray cwd
# %#  - # when root, else %
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~%f%b %# '

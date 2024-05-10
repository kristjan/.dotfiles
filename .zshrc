bindkey -v
bindkey "^?" backward-delete-char
bindkey '^R' history-incremental-search-backward

setopt interactivecomments # Turn on # as a comment character

setopt extendedhistory # Keep timestamps
setopt appendhistory # Otherwise a shell overwrites the file as it exits
setopt histignoredups # Don't store duplicate commands
setopt histreduceblanks # Don't store blank lines

setopt correct
setopt correctall

. ~/.zaliases

eval "$(/opt/homebrew/bin/brew shellenv)"

# Set up Git data for prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:*' enable git

# %(?.%F{green}√.%F{red}?%?)%f - Last exit code, or √ if success
# %B%F{240}%~%f%b - Gray cwd
# %#  - # when root, else %
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{240}%~'\$vcs_info_msg_0_'%f%b %# '

eval "$(rbenv init - zsh)"

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

path+=(~/bin)
path+=($(brew --prefix python)/libexec/bin)

# Run in login shells, theoretically once and not with each new terminal

export PATH=~/bin:/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH:~/src/go/bin:/Applications/Postgres.app/Contents/Versions/latest/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Bash completion framework, installed by Homebrew
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

[ -s ~/.bashrc ] && . ~/.bashrc

eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

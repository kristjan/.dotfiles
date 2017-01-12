export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH:/Users/kristjan/lib/android/tools:/Users/kristjan/lib/android/platform-tools:/Users/kristjan/lib/android/ndk:~/bin:~/src/go/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

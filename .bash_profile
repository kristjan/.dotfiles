export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH:/Users/kristjan/lib/android/tools:/Users/kristjan/lib/android/platform-tools:/Users/kristjan/lib/android/ndk:~/bin:~/src/go/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

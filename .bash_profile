# Run in login shells, theoretically once and not with each new terminal

export PATH=/usr/local/opt/coreutils/libexec/gnubin:/usr/local/bin:/usr/local/sbin:$PATH:/Users/kristjan/lib/android/tools:/Users/kristjan/lib/android/platform-tools:/Users/kristjan/lib/android/ndk:~/bin:~/src/go/bin:/Applications/Postgres.app/Contents/Versions/latest/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

export NVM_DIR="$HOME/.nvm"
# Loading NVM is slow (nearly a second) and delays every new shell when most
# will never run `nvm`. This tiny function delays load until the first time NVM
# is called, then gets replaced.
function nvm() {
  echo "Havn't loaded NVM yet; doing so now."
  . "$(brew --prefix nvm)/nvm.sh"
  echo nvm $@
  nvm $@
}

eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

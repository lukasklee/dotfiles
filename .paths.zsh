##
# NVM - Node Version Manager
# https://github.com/nvm-sh/nvm
#
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

##
# Example: We can now run mjml instead of ./node_modules/.bin/mjml
#
export PATH="$PATH:./node_modules/.bin"

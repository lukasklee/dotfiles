# Tools
alias v="nvim"
alias lg="lazygit"
alias sf="spotify_player"
alias ls="eza -l -a --icons --group-directories-first --ignore-glob=\"*.DS_Store*\""
alias day="sh ~/.dotfiles/scripts/day"

# Delete all branches execpt the important ones
alias delo="git branch | grep -v \" main$\" | grep -v \" master$\" | grep -v \" develop$\" | grep -v \" development$\" | xargs git branch -D"

# This function searches for a .code-workspace file in the project and opens it with VS Code; if none is found, it opens the current directory in VS Code instead.
alias code='function _code() { \
  workspace_file=$(find . -name "*.code-workspace" -print -quit); \
  if [ -n "$workspace_file" ]; then \
    code "$workspace_file"; \
  else \
    code .; \
  fi \
}; _code'

# This function searches for a .code-workspace file in the project and opens it with Cursor; if none is found, it opens the current directory in Cursor instead.
alias cursor='function _cursor() { \
  workspace_file=$(find . -name "*.code-workspace" -print -quit); \
  if [ -n "$workspace_file" ]; then \
    cursor "$workspace_file"; \
  else \
    cursor .; \
  fi \
}; _cursor'

# Open in Neovim
alias dotfiles="cd ~/.dotfiles; nvim ."
alias nvimconf="cd ~/.dotfiles/.config/nvim; nvim ."

# MongoDB
alias mongostart="brew services start mongodb-community@7.0"
alias mongostop="brew services stop mongodb-community@7.0"

# Homebrew
alias update="brew upgrade --g"

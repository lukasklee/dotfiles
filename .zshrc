export DOTFILES=$HOME/.dotfiles

# Enable colors
export CLICOLOR=1

##
# Aliases
#
source $DOTFILES/.aliases.zsh
source $DOTFILES/.aliases-private.zsh

##
# Paths
#
source $DOTFILES/.paths.zsh

##
# Antigen - A plugin manager for zsh
# https://github.com/zsh-users/antigen
#
source ~/antigen.zsh
antigen bundle git # (Shortcuts: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

##
# Starship - The minimal, blazing-fast, and infinitely customizable prompt for any shell!
# https://starship.rs/
#
eval "$(starship init zsh)"

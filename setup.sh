#!/bin/sh

echo "Setting up your Mac..."

xcode-select --install

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -sw $HOME/.dotfiles/.zshrc $HOME/.zshrc

##
# Create symlinks for config files
#
mkdir -p $HOME/.config/alacritty
ln -sf $HOME/.dotfiles/.config/alacritty/alacritty.toml $HOME/.config/alacritty/alacritty.toml

rm -rf $HOME/.config/nvim
ln -sf $HOME/.dotfiles/.config/nvim $HOME/.config/nvim

mkdir -p $HOME/.config/spotify-player
ln -sf $HOME/.dotfiles/.config/spotify-player/app.toml $HOME/.config/spotify-player/app.toml

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# One-time initialization of mkcert
mkcert -install

# Install antigen, plugin manager for zsh
curl -L git.io/antigen > ~/antigen.zsh

#!/bin/sh

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

ln -sf $HOME/.dotfiles/.config/starship.toml $HOME/.config/starship.toml

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

# One-time initialization of mkcert
mkcert -install

# Install antigen, plugin manager for zsh
curl -L git.io/antigen > ~/antigen.zsh

# Themes for Alacritty
mkdir -p $HOME/.dotfiles/.config/alacritty/themes
git clone git@github.com:catppuccin/alacritty.git $HOME/.dotfiles/.config/alacritty/themes/catppuccin 2> /dev/null || git -C $HOME/.dotfiles/.config/alacritty/themes/catppuccin pull
git clone git@github.com:z0al/poimandres-alacritty.git $HOME/.dotfiles/.config/alacritty/themes/poimandres 2> /dev/null || git -C $HOME/.dotfiles/.config/alacritty/themes/poimandres pull

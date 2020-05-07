#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Install PHP extensions with PECL
sudo pecl install memcached imagick

# Create a Sites directory
# This is a default directory for macOS user accounts but doesn't comes pre-installed
sudo mkdir $HOME/Projects

# Clone Github repositories
./clone.sh

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
sudo rm -rf $HOME/.zshrc
sudo ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc
